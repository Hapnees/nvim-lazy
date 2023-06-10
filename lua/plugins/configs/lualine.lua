local status, lualine = pcall(require, "lualine")
if not status then
	return
end

lualine.setup({
	options = {
		component_separators = { left = "", right = "" },
		section_separators = { left = " ", right = " " },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename" },
		lualine_c = { "branch", "diff", "diagnostics" },
		lualine_x = { "filetype" },
		lualine_y = { "" },
		lualine_z = { "location" },
	},
})
