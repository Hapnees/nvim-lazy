return {
	{ "kdheepak/lazygit.nvim" },
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
		config = function()
			require("plugins.git.config")
		end,
	},
}
