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

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true })
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true })

-- __ VIMTEX / SKIM
vim.g.tex_flavor='latex' -- Default tex file format
vim.g.vimtex_view_method = 'skim' -- Choose which program to use to view PDF file 
vim.g.vimtex_view_skim_sync = 1 -- Value 1 allows forward search after every successful compilation
vim.g.vimtex_view_skim_activate = 1 -- Value 1 allows change focus to skim after command `:VimtexView` is given

-- __ C++ __ 
-- compiles and links in one step without creating .o file
vim.api.nvim_set_keymap( 'n', '<leader>s', ':!clang++ main.cpp -o main;./main', { noremap = true, silent = true })
-- compile, link without executing
vim.api.nvim_set_keymap( 'n', '<leader>a', ':!clang++ main.cpp -o main', { noremap = true, silent = true })
-- only compiling without linking
-- vim.api.nvim_set_keymap( 'n', '<leader>a', ':!clang++ main.cpp', { noremap = true, silent = true })
-- Automatically set indentation for C++ files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "cpp",
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
        vim.bo.expandtab = false
    end,
})
-- __ NEOVIM __
-- shows relative line numbers above / beneath cursor
vim.wo.relativenumber = true
-- shows absolute line number in line where cursor is
vim.wo.number = true
-- Tab and indentation settings
-- vim.opt.shiftwidth = 2    -- The number of spaces inserted for indentation
-- vim.opt.tabstop = 2       -- The number of spaces a tab counts for
vim.opt.expandtab = true  -- Use spaces instead of tabs
-- shows highlighting of end of line
vim.opt.colorcolumn = "100"
-- always show sign column on left side?
vim.opt.signcolumn = "yes"
-- automatically saves files
vim.o.autowriteall = true
vim.env.LANG = "en_US.UTF-8"
-- set langmap=öäÖÄ;{}[]

require("matze.lazy")
