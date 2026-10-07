return {
	'stevearc/oil.nvim',
	opts = {
		default_file_explorer = true,
		view_options = { show_hidden = false },
		win_options = { signcolumn = "no", wrap = false }
	},
	dependencies = {
		{ "nvim-mini/mini.icons", opts = {} }
	},
	lazy = false,
}
