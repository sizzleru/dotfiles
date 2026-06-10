-- status column
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8

-- spacing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.api.nvim_create_autocmd(
	"FileType",
	{
		pattern = "*",
		callback = function()
			vim.opt_local.autoindent = false
			vim.opt_local.smartindent = false
			vim.opt_local.expandtab = false
			vim.opt.cindent = false
			vim.opt.indentexpr = ""
		end,
	}
)

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
vim.keymap.set( "n", "<Space>", "<Nop>" )
vim.keymap.set(
	"n",
	"<Esc>",
	function()
		vim.cmd("fclose")
		vim.cmd("nohlsearch")
	end
)
vim.keymap.set(
	"n",
	"<leader><CR>",
	function()
		vim.cmd( "belowright split | terminal make run" )
	end
)

-- files
vim.opt.swapfile = false
--vim.opt.directory = vim.fn.stdpath( "data" ) .. "/swap//"
vim.opt.backup = false
vim.opt.undofile = true

-- clipboard
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", '<leader>r', ':registers<CR>')

-- behaviour
vim.opt.smartindent = false
vim.opt.autoindent = false
vim.g.python_recommended_style = 0
