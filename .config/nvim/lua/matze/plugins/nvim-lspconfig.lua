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

                local mason_lspconfig = require('mason-lspconfig')
                local lspconfig = vim.lsp.config

                -- Use a single, centralized handler for all servers
                mason_lspconfig.setup({
                        ensure_installed = { "pyright", "clangd", "ltex", "ruff", "ts_ls", "rust_analyzer" },
                        handlers = {
                                -- The default handler for most servers.
                                -- It will be used for any server not specified below.
                                function(server_name)
                                        lspconfig[server_name].setup({
                                                on_attach = on_attach,
                                                capabilities = capabilities,
                                        })
                                end,
                                -- Special handler for servers that need a custom configuration.
                                -- You can override the default settings for specific servers here.
                                -- You can copy the custom setups from your old config and place them here.

                                -- ltex server configuration
                                ["ltex"] = function()
                                        lspconfig.ltex.setup({
                                                on_attach = on_attach,
                                                capabilities = capabilities,
                                                settings = {
                                                        ltex = {
                                                                language = "en-US",
                                                                additionalRules = {
                                                                        enablePickyRules = true,
                                                                        motherTongue = "de",
                                                                },
                                                                disabledRules = {
                                                                        ["en-US"] = { "WHITESPACE_RULE" },
                                                                },
                                                                dictionary = {
                                                                        ["en-US"] = { "Neovim", "vimtex", "Lua", "ltex-ls" },
                                                                },
                                                        },
                                                },
                                                filetypes = { "tex", "markdown", "text" },
                                        })
                                end,

                                -- ruff server configuration
                                ["ruff"] = function()
                                        lspconfig.ruff.setup({
                                                on_attach = on_attach,
                                                capabilities = capabilities,
                                                settings = {
                                                        args = { "--ignore", "E501" },
                                                        format = { enabled = true },
                                                },
                                        })
                                end,

                                -- rust_analyzer server configuration
                                ["rust_analyzer"] = function()
                                        lspconfig.rust_analyzer.setup({
                                                on_attach = on_attach,
                                                capabilities = capabilities,
                                                settings = {
                                                        ['rust-analyzer'] = {},
                                                },
                                        })
                                end,
                        }
                })

                -- Global mappings
                vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
                vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

                vim.api.nvim_create_autocmd('LspAttach', {
                        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                        callback = function(ev)
                                vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

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
