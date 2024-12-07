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
  end
}
