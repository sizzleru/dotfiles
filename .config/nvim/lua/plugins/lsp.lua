return {
	"neovim/nvim-lspconfig",
	config = function()

		-- binds
		vim.api.nvim_create_autocmd(
			"LspAttach",
			{
				callback = function(ev)
					local opts = { buffer = ev.buf }
					vim.keymap.set( "n", "gd", vim.lsp.buf.definition, opts )
					vim.keymap.set( "n", "gr", vim.lsp.buf.references, opts )
					vim.keymap.set( "n", "K", vim.lsp.buf.hover, opts )
					vim.keymap.set( "n", "<leader>rn", vim.lsp.buf.rename, opts )
					vim.keymap.set( "n", "<leader>ca", vim.lsp.buf.code_action, opts )
				end,
			}
		)

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
