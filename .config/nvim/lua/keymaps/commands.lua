-- Commands
vim.keymap.set(
	"n",
	"<leader>fc",
	function()
		require( "telescope.builtin" ).commands()
	end
)
