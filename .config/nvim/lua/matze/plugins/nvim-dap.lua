return {
  "rcarriga/nvim-dap-ui",
  event = "VeryLazy",
  dependencies = {
	"mfussenegger/nvim-dap",
	"mfussenegger/nvim-dap-python",
	"theHamsta/nvim-dap-virtual-text",
	"nvim-neotest/nvim-nio",
  },
  config = function()
	require("dap-python").setup()
	require("dap-python").test_runner = "pytest"
	require("dapui").setup()

        vim.api.nvim_set_keymap('n', '<leader>do', ':lua require("dapui").open({reset = true})<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>dc', ':lua require("dapui").close()<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>dt', ':lua require("dap-python").test_method()<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>db', ':DapToggleBreakpoint<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>dd', ':DapContinue<CR>', { noremap = true, silent = true })

  end
}
