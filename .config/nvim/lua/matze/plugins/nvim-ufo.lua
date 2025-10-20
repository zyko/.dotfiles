return {
        'kevinhwang91/nvim-ufo',
        dependencies = { 'kevinhwang91/promise-async' },
        config = function()
                vim.o.foldcolumn = '1'
                vim.o.foldlevel = 99
                vim.o.foldlevelstart = 99
                vim.o.foldenable = true

                vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
                vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

                local capabilities = vim.lsp.protocol.make_client_capabilities()
                capabilities.textDocument.foldingRange = {
                        dynamicRegistration = false,
                        lineFoldingOnly = true
                }

                -- Using Mason and Mason-Lspconfig to automatically set up servers
                require('mason-lspconfig').setup({
                        handlers = {
                                function(server_name)
                                        vim.lsp.config[server_name].setup({
                                                capabilities = capabilities,
                                                -- You can add other configurations here
                                        })
                                end,
                        },
                })

                require('ufo').setup()
        end
}
