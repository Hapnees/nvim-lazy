return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugins.ui.lualine")
		end,
	},
	{ "WhoIsSethDaniel/lualine-lsp-progress.nvim" },
	{
		"akinsho/bufferline.nvim",
		version = "*",
		config = function()
			require("plugins.ui.bufferline")
		end,
	},
}
