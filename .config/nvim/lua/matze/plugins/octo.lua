-- if installing fails: `brew install gh`
return {
  'pwntester/octo.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    -- OR 'ibhagwan/fzf-lua',
    'nvim-tree/nvim-web-devicons',
  },
  config = function ()
	local octo = require("octo")
	octo.setup({
		default_to_projects_v2 = true,
	})
  end
}
