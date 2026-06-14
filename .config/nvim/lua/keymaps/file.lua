vim.keymap.set(
	"n",
	".",
	require( "oil" ).toggle_hidden,
	{ desc = "Toggle hidden files" }
)

vim.keymap.set(
	"n",
	"<leader>h",
	function()
		require( "oil.actions" ).parent.callback()
	end,
	{ desc = "Open parent folder (Oil)" }
)

vim.keymap.set(
	"n",
	"<leader>l",
	function()
		require( "oil.actions" ).select.callback()
	end,
	{ desc = "Open parent folder (Oil)" }
)
