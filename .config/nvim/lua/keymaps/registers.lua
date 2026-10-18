-- Registers
vim.keymap.set(
	"n",
	"<leader>rr",
	function()
		require( "telescope.builtin" ).registers()
	end,
	{ desc = "Find registers" }
)
