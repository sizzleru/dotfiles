vim.api.nvim_create_autocmd(
	"FileType",
	{
		pattern = { "haskell", "lua", "python", "bash" },
		callback = function()
		vim.treesitter.start()
		end,
	}
)

