-- default environment
vim.g.python3_host_prog = "/Users/matze/Coding/envs/env_default/bin/python3.10"
vim.g.mapleader = " "


vim.api.nvim_exec([[
  autocmd FileType tex setlocal shiftwidth=4 tabstop=4 expandtab
]], false)

-- __JUKIT__
-- automatically activates the venv from terminal if jukit is opened
vim.g.jukit_shell_cmd = 'source "$(dirname $(which python))/activate" && ipython3'
vim.api.nvim_set_keymap('n', '<S-CR>', ':call jukit#send#line()<CR>', { noremap = true, silent = true })
--
-- _plotting_
vim.g.jukit_terminal = 'tmux' -- does not work currently
vim.g.jukit_inline_plotting = 1 -- inline (1) does not work currently
vim.g.jukit_mpl_style = 1 

-- enables clipboard for copying text from nvim to os
vim.api.nvim_set_option("clipboard","unnamed")

-- dapui

vim.api.nvim_set_keymap('n', '<leader>do', ':lua require("dapui").open({reset = true})<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dc', ':lua require("dapui").close()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dt', ':lua require("dap-python").test_method()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>db', ':DapToggleBreakpoint<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dd', ':DapContinue<CR>', { noremap = true, silent = true })

-- shows relative line numbers above / beneath cursor
vim.wo.relativenumber = true
-- shows absolute line number in line where cursor is
vim.wo.number = true

-- shows highlighting of end of line
vim.opt.colorcolumn = "100"

-- always show sign column on left side?
vim.opt.signcolumn = "yes"
 
-- automatically saves files
vim.o.autowriteall = true

vim.env.LANG = "en_US.UTF-8"

require("matze.lazy")
