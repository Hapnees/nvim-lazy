local nvim = vim.opt

vim.cmd("filetype detect")

nvim.backup = false -- creates a backup file
nvim.clipboard = "unnamedplus" -- allows nvim to access the system clipboard
nvim.cmdheight = 1 -- space in the nvim line for displaying messages
nvim.completeopt = { "menuone", "noselect" } -- mostly just for cmp
-- nvim.fileencoding = "utf-8" -- the encoding written to a file
nvim.hlsearch = true -- highlight all mathes on previous search pattern
nvim.ignorecase = true -- ignore case in search patterns
nvim.mouse = "a" -- allow the mouse
nvim.pumheight = 10 -- pop up menu height
nvim.showtabline = 2 -- always show tabs
nvim.smartcase = true -- smart case
nvim.smartindent = true -- make indenting smarter again
nvim.splitbelow = true -- force all horizontal splits to go below current window
nvim.splitright = true -- force all vertical splits to go to the right of current window
nvim.swapfile = false -- creates a swapfile
nvim.termguicolors = true -- set term gui colors
nvim.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in ms)
nvim.updatetime = 300 -- faster completion
nvim.writebackup = false --
nvim.expandtab = true -- convert tabs to spaces
nvim.shiftwidth = 2 -- the number of spaces inserted for each indentation
nvim.tabstop = 2 -- insert 2 spaces for a tab
nvim.cursorline = true -- highlight the current cursor line
nvim.number = true -- set numbered lines
nvim.relativenumber = false -- set relative numbered lines
nvim.numberwidth = 2 -- set number column width to 2 (default 4)
nvim.signcolumn = "yes" -- always show the sign column
nvim.wrap = false -- display lines as one long lineA
nvim.scrolloff = 8 -- page offset
nvim.sidescrolloff = 8
nvim.guifont = "JetBrainsMono Nerd Font"

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
