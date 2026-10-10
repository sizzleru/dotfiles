vim.api.nvim_create_autocmd(
	"VimLeave",
	{
		callback = function()
			local tmpfile = os.getenv( "FILEBROWSER_LASTDIR_FILE" )
			if tmpfile then
				vim.fn.writefile({ vim.fn.getcwd() }, tmpfile)
			end
		end,
	}
)

vim.api.nvim_create_autocmd(
	"BufEnter",
	{
		pattern = "oil://*",
		callback = function()
			local dir = require( "oil" ).get_current_dir()
			if dir then
				vim.cmd.cd( dir )
			end
		end
	}
)
