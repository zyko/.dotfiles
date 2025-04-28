return {
        "github/copilot.vim",
        lazy = false,
        config = function()
                -- vim.api.nvim_set_keymap('i', '<C-g>', '<Plug>(copilot-accept)', { noremap = true, silent = true })
                vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
                  expr = true,
                  replace_keycodes = false
                })
                vim.g.copilot_no_tab_map = true
                -- vim.api.nvim_set_keymap('i', '<C-g>', '<Plug>(copilot-suggest)', { noremap = true, silent = true })
        end
    }
