return {
  "neovim/nvim-lspconfig",
  dependencies = {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
  },

  config = function()
	-- Setup language servers.
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

	local mason = require('mason')
	mason.setup{
                ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗"
			}
		},
	    }

	local mason_lspconfig = require 'mason-lspconfig'
	mason_lspconfig.setup {
		ensure_installed = { "pyright" }
	}

	local lspconfig = require('lspconfig')
	lspconfig.tsserver.setup {}
	lspconfig.rust_analyzer.setup{
	  -- Server-specific settings. See `:help lspconfig-setup`
	  settings = {
	    ['rust-analyzer'] = {},
	}}
	lspconfig.pyright.setup{
	  on_attach = on_attach,
	  capabilities = capabilities,
	  filetypes = {"python"},
	}

	-- Global mappings.
	-- See `:help vim.diagnostic.*` for documentation on any of the below functions
	vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
	vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
	vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

	-- Use LspAttach autocommand to only map the following keys
	-- after the language server attaches to the current buffer
	vim.api.nvim_create_autocmd('LspAttach', {
	  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	  callback = function(ev)
	    -- Enable completion triggered by <c-x><c-o>
	    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

	    -- Buffer local mappings.
	    -- See `:help vim.lsp.*` for documentation on any of the below functions
	    local opts = { buffer = ev.buf }
	    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
	    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
	    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
	    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
	    vim.keymap.set('n', '<C-s>', vim.lsp.buf.signature_help, opts)
	    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
	    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
	    vim.keymap.set('n', '<space>wl', function()
	      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	    end, opts)
	    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
	    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
	    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
	    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
	    vim.keymap.set('n', '<space>f', function()
	      vim.lsp.buf.format { async = true }
	    end, opts)
	  end,
	})
  end,
}
