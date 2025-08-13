-- default environment
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.api.nvim_exec([[
  autocmd FileType tex setlocal shiftwidth=4 tabstop=4 expandtab
]], false)

-- enables clipboard for copying text from nvim to os
vim.api.nvim_set_option("clipboard", "unnamed")

-- __ C++ __
-- compiles and links in one step without creating .o file
vim.api.nvim_set_keymap('n', '<leader>s', ':!clang++ main.cpp -o main;./main', { noremap = true, silent = true })
-- compile, link without executing
vim.api.nvim_set_keymap('n', '<leader>a', ':!clang++ main.cpp -o main', { noremap = true, silent = true })
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

-- shows relative line numbers above / beneath cursor
vim.wo.relativenumber = true
-- shows absolute line number in line where cursor is
vim.wo.number = true
-- Tab and indentation settings
-- vim.opt.shiftwidth = 2    -- The number of spaces inserted for indentation
-- vim.opt.tabstop = 2       -- The number of spaces a tab counts for
vim.opt.expandtab = true -- Use spaces instead of tabs
-- shows highlighting of end of line
vim.opt.colorcolumn = "100"
-- always show sign column on left side?
vim.opt.signcolumn = "yes"
-- automatically saves files
vim.o.autowriteall = true
vim.env.LANG = "en_US.UTF-8"
vim.opt.encoding = "utf-8"                    -- Sets internal encoding for Neovim
vim.opt.fileencoding = "utf-8"                -- Sets file encoding for written files
vim.opt.fileencodings = { "utf-8", "latin1" } -- Specifies encodings for file detection

-- remapping german letters
vim.keymap.set({ "i", "v" }, 'ö', '[', { noremap = true, silent = true })
vim.keymap.set({ "i", "v" }, 'Ö', ']', { noremap = true, silent = true })
vim.keymap.set("n", 'ö', '%', { noremap = true, silent = true })

vim.g.vimtex_compiler_latexmk = {
        build_dir = 'build',
        callback = 1,
        continuous = 1,
        executable = 'latexmk',
        options = {
                '-pdf',
                '-shell-escape',
                '-interaction=nonstopmode',
                '-file-line-error',
                '-synctex=1',
        },
}

require("matze.lazy")
