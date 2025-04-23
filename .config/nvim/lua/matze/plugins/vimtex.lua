return {
    "lervag/vimtex",
    init = function()
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
            math = 0,                -- Do not conceal math environments
            sections = 1,            -- Conceal section commands
            cites = 1,               -- Conceal citation commands
            references = 1,          -- Conceal reference commands
            environments = {
                align = 0,           -- Do not conceal align environment
                equation = 0,        -- Do not conceal equation environment
                itemize = 1,         -- Conceal itemize environment
            },
        }

        -- __ VIMTEX / SKIM
        vim.g.tex_flavor='latex' -- Default tex file format
        vim.g.vimtex_view_method = 'skim' -- Choose which program to use to view PDF file 
        vim.g.vimtex_view_skim_sync = 1 -- Value 1 allows forward search after every successful compilation
        vim.g.vimtex_view_skim_activate = 1 -- Value 1 allows change focus to skim after command `:VimtexView` is given

        require('lspconfig').ltex.setup{
            settings = {
                ltex = {
                    language = "en-US",
                    additionalRules = {
                        enablePickyRules = true,
                        motherTongue = "de" -- Set native language if needed
                    },
                    dictionary = {
                        ["en-US"] = {"~/.config/nvim/dictionary.en-US.txt"},
                    },
                    -- -- Set the path to the global directory
                    -- workspaceFolder = { vim.fn.expand("~/.config/ltex") },
                },
            },
            filetypes = { "tex", "markdown", "text" },
        }
    end
}
