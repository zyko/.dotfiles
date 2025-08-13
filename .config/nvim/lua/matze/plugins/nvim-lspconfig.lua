-- This file configures your LSP servers using nvim-lspconfig and mason.nvim.
-- It has been updated for compatibility with mason-lspconfig version 2.1.0,
-- which does not have the `setup_handlers` function.

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
                local lspconfig = require('lspconfig')

                mason_lspconfig.setup({
                        ensure_installed = { "pyright", "clangd", "ltex", "ruff", "ts_ls", "rust_analyzer" },
                })

                -- The following is the manual setup for each language server.
                -- This approach is required for older versions of mason-lspconfig.
                -- You can remove or modify these blocks to change your server configurations.

                -- Pyright
                lspconfig.pyright.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        filetypes = { "python" },
                })

                -- Clangd
                lspconfig.clangd.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                })

                -- ltex
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

                -- Rust Analyzer
                lspconfig.rust_analyzer.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        settings = {
                                ['rust-analyzer'] = {},
                        },
                })

                -- TypeScript Language Server
                lspconfig.ts_ls.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                })

                -- Ruff
                lspconfig.ruff.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                        settings = {
                                -- Global settings for Ruff go here
                                args = {
                                        "--ignore", "E501" -- Example: ignore line length errors globally
                                },
                                format = {
                                        enabled = true, -- Enable formatting globally
                                }
                        },
                })

                -- Global mappings.
                -- See `:help vim.diagnostic.*` for documentation on any of the below functions
                vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
                vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)


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
