return {
  "nvim-treesitter/nvim-treesitter", version = false,
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  config = function()
    require("nvim-treesitter.configs").setup({
	rainbow = { enable = false, },
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python" },
      auto_install = false,
      highlight = { enable = true, additional_vim_regex_highlighting = false },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-n>",
          node_incremental = "<C-n>",
          scope_incremental = "<C-s>",
          node_decremental = "<C-m>",
        }
      }
    })
  end
}
