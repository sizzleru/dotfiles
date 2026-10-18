return {
	"saghen/blink.cmp",
	version = "1.*",
	opts = {
		keymap = {
			["<Tab>"] = { "accept", "fallback" },
			["<C-k>"] = { "select_prev", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },
			--["<Esc>"] = { "hide", "fallback" },
			["<C-space>"] = { "show" },
		},
		signature = { enabled = true },
	},
}
