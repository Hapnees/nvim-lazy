vim.opt.list = true

local status, indent = pcall(require, "indent_blankline")
if not status then
	return
end

indent.setup({
	show_current_context = true,
})
