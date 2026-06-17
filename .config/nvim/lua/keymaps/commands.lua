-- Commands
vim.keymap.set(
	"n",
	"<leader>fc",
	function()
		require( "telescope.builtin" ).commands()
	end,
	{ desc = "Find commands" }
)

vim.keymap.set(
	"n",
	"<leader>u",
	function()
		vim.cmd.UndotreeToggle()
		vim.cmd.undo()
	end,
	{ desc = "Undo + show tree" }
)
