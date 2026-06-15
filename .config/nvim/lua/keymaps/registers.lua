-- Registers
vim.keymap.set(
	"n",
	"<leader>fr",
	function()
		require( "telescope.builtin" ).registers()
	end
)
