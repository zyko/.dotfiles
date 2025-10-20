return {
        "lervag/vimtex",
        config = function()
                -- Key mapping to compile LaTeX
                vim.api.nvim_set_keymap("n", "<leader>l", ":VimtexCompile<CR>", { noremap = true, silent = true })

                -- Enable spell checking for LaTeX files
                vim.api.nvim_create_autocmd("FileType", {
                        pattern = "tex",
                        callback = function()
                                vim.opt_local.spell = true
                                vim.opt_local.spelllang = "en_us"
                        end,
                })

                -- Vimtex syntax and conceal settings to avoid false positives in spell check
                vim.g.vimtex_syntax_enabled = 1
                vim.g.vimtex_syntax_conceal = {
                        math = 0,
                        sections = 1,
                        cites = 1,
                        references = 1,
                        environments = {
                                align = 0,
                                equation = 0,
                                itemize = 1,
                        },
                }

                -- __ VIMTEX / SKIM
                vim.g.tex_flavor = 'latex'
                vim.g.vimtex_view_method = 'skim'
                vim.g.vimtex_view_skim_sync = 1
                vim.g.vimtex_view_skim_activate = 1
        end
}
