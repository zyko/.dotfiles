return
{
	"robitx/gp.nvim",
	config = function()
		require("gp").setup({
			chat_shortcut_new = { modes = { "n", "i", "v", "x" }, shortcut = "<C-g>c" }, 

			image = {
				store_dir = os.getenv("CODE_DIR") .. "/data" .. "/dalle_images"
			}
		})

		-- or setup with your own config (see Install > Configuration in Readme)
		-- require("gp").setup(config)

        	-- shortcuts might be setup here (see Usage > Shortcuts in Readme)
	end,
}
