local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local colors = {
	yellow = "#ECBE7B",
	cyan = "#82acee",
	darkblue = "#081633",
	orange = "#FF8800",
	violet = "#a9a1e1",
	green = "#a3ee82",
	blue = "#51afef",
	red = "#ec5f67",
}

local lsp_progress = {
	"lsp_progress",
	colors = {
		percentage = colors.cyan,
		title = colors.cyan,
		message = colors.cyan,
		lsp_client_name = colors.green,
		use = true,
	},
	separators = {
		component = " ",
		progress = " | ",
		message = { pre = "(", post = ")" },
		percentage = { pre = "", post = "%% " },
		title = { pre = "", post = ": " },
		lsp_client_name = { pre = "[", post = "]" },
	},
	-- never show status for this list of servers;
	-- can be useful if your LSP server does not emit
	-- status messages
	hide = { "null-ls" },
	-- by default this is false. If set to true will
	-- only show the status of LSP servers attached
	-- to the currently active buffer
	only_show_attached = true,
	display_components = { "lsp_client_name", { "title", "percentage", "message" } },
	timer = {
		progress_enddelay = 500,
		lsp_client_name_enddelay = 1000,
		attached_delay = 3000,
	},
	message = { initializing = "Initializing…", commenced = "In Progress", completed = "Completed" },
	max_message_length = 30,
}

local config = {
	options = {
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename" },
		lualine_c = { "branch", "diff", "diagnostics", lsp_progress },
		lualine_x = { "filetype" },
		lualine_y = {},
		lualine_z = { "location" },
	},
}

lualine.setup(config)
