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
	{ desc = "Open file/folder (Oil)" }
)

vim.keymap.set(
	"n",
	"<leader>l",
	function()
		require( "oil.actions" ).select.callback()
	end,
	{ desc = "Open parent folder (Oil)" }
)

vim.keymap.set(
	"n",
	"<leader>t",
	function()
		--vim.cmd( "botright split | terminal" )
		vim.cmd( "enew | terminal" )
	end,
	{ desc = "Open terminal in cwd" }
)

vim.keymap.set(
	"n",
	"<leader>q",
	function()
		if vim.bo.filetype == "oil" then
			local oil = require( "oil" )
			local dir = oil.get_current_dir()
			dir = vim.fs.normalize( dir )

			vim.cmd( "cd " .. vim.fn.fnameescape( dir ) )
			vim.cmd( "enew | terminal" )
		else
			require( "oil" ).open()
		end
	end,
	{ desc = "Toggle Oil / cd" }
)
