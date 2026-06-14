return {
	"neovim/nvim-lspconfig",
	config = function()

		-- bash
		vim.lsp.config(
			"bashls",
			{
				cmd = { "bash-language-server", "start" },
				filetypes = { "sh", "bash" },
			}
		)

		-- python
		vim.lsp.config(
			"pyright",
			{
				cmd = { "pyright-langserver", "--stdio" },
				filetypes = { "python" },
				root_markers = { "pyproject.toml", "setup.py", "requirements.txt", ".git" },
				settings = {
					python = {
						pythonPath = ".venv/bin/python"
					}
				}
			}
		)

		-- lua
		vim.lsp.config(
			"lua_ls",
			{
				cmd = { "lua-language-server" },
				filetypes = { "lua" },
				root_markers = { ".luarc.json", ".stylua.toml", "stylua.toml" },
				settings = {
					Lua = {
						runtime = { version = "LuaJIT" },
						diagnostics = { globals = { "vim" } },
						workspace = { checkThirdParty = false }
					}
				}
			}
		)

		-- rust
		vim.lsp.config(
			"rust_analyzer",
			{
				cmd = { "rust-analyzer" },
				filetypes = { "rust" },
				root_markers = { "Cargo.toml", "Cargo.lock" },
				settings = {
					["rust-analyzer"] = {
						checkOnSave = {
							command = "clippy",
						},
						cargo = {
							allFeatures = true,
						},
						inlayHints = {
							bindingModeHints       = { enable = true },
							chainingHints          = { enable = true },
							closureReturnTypeHints = { enable = "always" },
							typeHints              = { enable = true },
						},
					},
				},
			}
		)

		-- haskell
		vim.lsp.config(
			"hls",
			{
				cmd = { "haskell-language-server-wrapper", "--lsp" },
				filetypes = { "haskell", "lhaskell" },
				root_markers = { "*.cabal", "stack.yaml", "cabal.project" },
			}
		)

		vim.lsp.enable( { "bashls", "pyright", "lua_ls", "hls" } )
	end
}
