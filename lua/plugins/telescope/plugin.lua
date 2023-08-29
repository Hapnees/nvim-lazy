return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		config = function()
			require("plugins.telescope.config")
		end,
	},
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
}
