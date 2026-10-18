-- unset <Space>
vim.keymap.set( "n", "<Space>", "<Nop>" )

-- <Escape> to cancel any popups
vim.keymap.set(
	"n",
	"<Esc>",
	function()
		vim.cmd.nohlsearch()
		require( "noice" ).cmd( "dismiss" )
	end,
	{ desc = "Close popups" }
)

-- Keymaps
vim.keymap.set(
	"n",
	"<leader>kk",
	function()
		require( "telescope.builtin" ).keymaps()
	end,
	{ desc = "Find keymaps" }
)

-- Commands
vim.keymap.set(
	"n",
	"<leader>cc",
	function()
		require( "telescope.builtin" ).commands()
	end,
	{ desc = "Find commands" }
)
