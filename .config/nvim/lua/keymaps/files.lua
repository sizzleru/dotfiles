vim.keymap.set(
	"n",
	".",
	require( "oil" ).toggle_hidden,
	{ desc = "Toggle hidden files" }
)

vim.keymap.set(
	"n",
	"<leader>h",
	require( "oil.actions" ).parent.callback,
	{ desc = "Open file/folder (Oil)" }
)

vim.keymap.set(
	"n",
	"<leader>l",
	require( "oil.actions" ).select.callback,
	{ desc = "Open parent folder (Oil)" }
)

vim.keymap.set(
	"n",
	"<leader>t",
	function()
		local dir
		if vim.bo.filetype == "oil" then
			dir = require( "oil" ).get_current_dir()
		else
			dir = vim.fn.expand( "%:p:h" )
		end

		vim.cmd( "botright split" )
		vim.cmd.lcd( dir )
		vim.cmd.terminal()
		vim.cmd.startinsert()
	end,
	{ desc = "Open terminal in current dir" }
)
