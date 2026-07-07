return {
	"NvChad/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = {
		filetypes = { "*" },
		user_default_options = {
			hex = true,
			css = true,
			tailwind = true,
		},
	}
}
