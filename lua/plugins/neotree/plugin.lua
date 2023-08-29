return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = { "MunifTanjim/nui.nvim", "kyazdani42/nvim-web-devicons" },
	branch = "v2.x",
	config = function()
		require("plugins.neotree.config")
	end,
}
