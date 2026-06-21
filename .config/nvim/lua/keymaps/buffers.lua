vim.keymap.set(
	"n",
	"<leader>bb",
	function()
		require( "telescope.builtin" ).buffers()
	end,
	{ desc = "Find buffers" }
)

vim.keymap.set(
	"n",
	"<leader>bh",
	":bprevious<CR>",
	{ silent = true, desc = "Previous buffer" }
)

vim.keymap.set(
	"n",
	"<leader>bl",
	":bnext<CR>",
	{ silent = true, desc = "Next buffer" }
)

vim.keymap.set(
	"n",
	"<leader>bx",
	function()
		vim.cmd( "bd" )
	end,
	{ desc = "Close buffer" }
)

vim.keymap.set(
	"n",
	"<leader>bdd",
	function()
		vim.cmd( "%bd" )
	end,
	{ desc = "Close all buffers" }
)

vim.keymap.set(
	"n",
	"<leader>br",
	"<cmd>e!<cr>",
	{ desc = "Reload buffer" }
)
