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
}

require("lazy").setup({
	{ import = "plugins.autocomplete.plugin" },
	{ import = "plugins.colorscheme.plugin" },
	{ import = "plugins.neotree.plugin" },
	{ import = "plugins.git.plugin" },
	{ import = "plugins.lsp.plugin" },
	{ import = "plugins.autoclosing.plugin" },
	{ import = "plugins.telescope.plugin" },
	{ import = "plugins.treesitter.plugin" },
	{ import = "plugins.ui.plugin" },
	{ import = "plugins.comment.plugin" },
	{ import = "plugins.utils.plugin" },
	plugins,
})
