return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	config = function()
		require("plugins.autocomplete.config")
	end,
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"onsails/lspkind.nvim",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
}
