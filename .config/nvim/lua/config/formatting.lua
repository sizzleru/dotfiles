-- visual
vim.opt.wrap = false
vim.opt.list = true
vim.opt.listchars = {
	tab = "→ ",
	trail = "·",
	nbsp = "␣",
}

-- spacings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.api.nvim_create_autocmd(
	"FileType",
	{
		pattern = "*",
		callback = function()
			vim.opt_local.autoindent = true
			vim.opt_local.smartindent = false
			vim.opt_local.expandtab = false
			vim.opt.cindent = false
			vim.opt.indentexpr = ""
		end,
	}
)

-- remove auto-comment
vim.api.nvim_create_autocmd(
	"BufEnter",
	{
		callback = function()
			vim.opt.formatoptions:remove({ "r", "o" })
		end,
	}
)
