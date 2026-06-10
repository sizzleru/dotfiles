-- status column
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8

-- spacing
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- text
vim.opt.wrap = false
vim.opt.list = true
vim.opt.listchars = {
	tab = "→ ",
	trail = "·",
	nbsp = "␣",
}

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- terminal
vim.opt.termguicolors = true

-- commands
vim.g.mapleader = " "

-- files
vim.opt.swapfile = false
--vim.opt.directory = vim.fn.stdpath( "data" ) .. "/swap//"
vim.opt.backup = false
vim.opt.undofile = true

-- clipboard
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", '<leader>r', ':registers<CR>')
