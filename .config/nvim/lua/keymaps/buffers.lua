-- buffers
vim.keymap.set(
	"n",
	"<leader>fb",
	function()
		require( "telescope.builtin" ).buffers()
	end,
	{ desc = "Find buffers" }
)
