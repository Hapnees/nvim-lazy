local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end

local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
	return
end

local map = cmp.mapping

-- vim.api.nvim_set_hl(0, "CustomPmenu", { bg = "#181616", fg = "White" })
-- vim.api.nvim_set_hl(0, "CustomPmenuSel", { bg = "#c8904a", fg = "Black" })
-- vim.api.nvim_set_hl(0, "CustomBorder", { fg = "#3c3930" })

cmp.setup({
	window = {
		max_height = 10,
		completion = {
			border = "single",
			windowside_padding = 1,
			scrollbar = false,
		},
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = map.select_prev_item(),
		["<C-j>"] = map.select_next_item(),
		["<C-b>"] = map.scroll_docs(-4),
		["<C-f>"] = map.scroll_docs(4),
		["<C-Space>"] = map.complete(),
		["<C-c>"] = map.abort(),
		["<CR>"] = map.confirm({ select = false }),
	}),
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	},
	formatting = {
		format = lspkind.cmp_format({
			maxwidth = 50,
			ellipsis_char = "...",
		}),
	},
})
