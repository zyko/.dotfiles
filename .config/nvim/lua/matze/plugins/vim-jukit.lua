return {
	"luk400/vim-jukit",
    	config = function()
                -- automatically activates the venv from terminal if jukit is opened
                vim.g.jukit_shell_cmd = 'source "$(dirname $(which python))/activate" && ipython3'
                vim.api.nvim_set_keymap('n', '<S-CR>', ':call jukit#send#line()<CR>', { noremap = true, silent = true })
                vim.g.jukit_terminal = 'tmux' 
                vim.g.jukit_inline_plotting = 1 
                vim.g.jukit_mpl_style = 1 
	end,
}
