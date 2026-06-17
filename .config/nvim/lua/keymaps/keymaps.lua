-- Keymaps
vim.keymap.set(
	"n",
	"<leader>fk",
	function()
		require( "telescope.builtin" ).keymaps()
	end,
	{ desc = "Find keymaps" }
)
