return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("plugins.autoclosing.config")
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
	},
}
