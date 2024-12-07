return {
  "easymotion/vim-easymotion",
  config = function()
    -- Disable EasyMotion's default mappings
    vim.g.EasyMotion_do_mapping = 0

    -- Set custom EasyMotion keybindings
    vim.api.nvim_set_keymap('n', '<leader>m', '<Plug>(easymotion-prefix)', {})
    -- vim.api.nvim_set_keymap('n', '<leader>w', '<Plug>(easymotion-w)', {})   -- Jump to start of next word
    -- vim.api.nvim_set_keymap('n', '<leader>b', '<Plug>(easymotion-b)', {})   -- Jump to start of previous word
    -- vim.api.nvim_set_keymap('n', '<leader>j', '<Plug>(easymotion-j)', {})   -- Jump to next line
    -- vim.api.nvim_set_keymap('n', '<leader>k', '<Plug>(easymotion-k)', {})   -- Jump to previous line
  end
}
