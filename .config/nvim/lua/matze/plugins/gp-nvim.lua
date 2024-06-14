return
{
	"robitx/gp.nvim",
	config = function()
		require("gp").setup({
			image_dir = "/Users/matze/Coding/data/dalle_images",
			-- image_dir = (os.getenv("TMPDIR") or os.getenv("TEMP") or "/tmp") .. "/gp_images",
			chat_shortcut_new = { modes = { "n", "i", "v", "x" }, shortcut = "<C-g>c" }, 
		})

		-- or setup with your own config (see Install > Configuration in Readme)
		-- require("gp").setup(config)

        	-- shortcuts might be setup here (see Usage > Shortcuts in Readme)
	end,
}
