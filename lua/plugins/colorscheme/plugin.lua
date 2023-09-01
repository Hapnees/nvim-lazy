return {
	"RRethy/nvim-base16",
	{
		"svrana/neosolarized.nvim",
		config = function()
			require("plugins.colorscheme.config")
		end,
		dependencies = {
			"tjdevries/colorbuddy.nvim",
		},
	},
}
