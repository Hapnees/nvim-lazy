local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"nvim-lua/plenary.nvim",

	-- Colorscheme
	{
		"nanotech/jellybeans.vim",
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
		{ "RRethy/nvim-base16" },
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("plugins.configs.treesitter")
		end,
	},

	-- LSP
	{
		{
			"neovim/nvim-lspconfig",
			config = function()
				require("plugins.lsp.lspconfig")
			end,
		},
		{
			"glepnir/lspsaga.nvim",
			branch = "main",
			config = function()
				require("plugins.lsp.lspsaga")
			end,
		},
		"onsails/lspkind.nvim",
		{
			"williamboman/mason.nvim",
			config = function()
				require("plugins.lsp.mason")
			end,
		},
		"williamboman/mason-lspconfig.nvim",
		"jose-elias-alvarez/typescript.nvim",
	},

	-- Autocomplete
	{
		{
			"hrsh7th/nvim-cmp",
			config = function()
				require("plugins.configs.cmp")
			end,
		},
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
	},

	-- Formatting
	{
		{
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("plugins.lsp.null-ls")
			end,
		},
		"jayp0521/mason-null-ls.nvim",
	},

	-- Neo-tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "kyazdani42/nvim-web-devicons" },
		branch = "v2.x",
	},

	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugins.configs.lualine")
		end,
	},

	-- Auto closing
	{
		{
			"windwp/nvim-autopairs",
			config = function()
				require("plugins.configs.autopairs")
			end,
		},
		"windwp/nvim-ts-autotag",
	},

	-- Bufferline
	{
		"akinsho/bufferline.nvim",
		version = "*",
		config = function()
			require("plugins.configs.bufferline")
		end,
	},

	-- Telescope
	{
		{
			"nvim-telescope/telescope.nvim",
			branch = "0.1.x",
			config = function()
				require("plugins.configs.telescope")
			end,
		},
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},

	-- Comment
	{
		"numToStr/Comment.nvim",
		config = function()
			require("plugins.configs.comment")
		end,
	},

	-- Git
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("plugins.configs.gitsigns")
		end,
	},

	-- Lazygit
	{
		"kdheepak/lazygit.nvim",
	},

	-- Snippets
	{
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("plugins.configs.indent")
		end,
	},

	-- Terminal
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
}

require("lazy").setup(plugins)
