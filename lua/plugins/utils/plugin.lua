return {
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufReadPre",
		config = function()
			require("plugins.utils.config")
		end,
	},

	-- Terminal
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
}
