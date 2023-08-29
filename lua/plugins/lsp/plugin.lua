return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.lsp.lspconfig")
		end,
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
	},
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("plugins.lsp.lspsaga")
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("plugins.lsp.mason")
		end,
	},
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/typescript.nvim",
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "InsertEnter",
		config = function()
			require("plugins.lsp.null-ls")
		end,
	},
	{
		"jayp0521/mason-null-ls.nvim",
	},
}
