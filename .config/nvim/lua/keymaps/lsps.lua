vim.api.nvim_create_autocmd(
	"LspAttach",
	{
		callback = function(ev)
			local opts = { buffer = ev.buf }

			-- goto's
			vim.keymap.set( "n", "gd", vim.lsp.buf.definition, opts )

			-- diagnostics
			vim.keymap.set(
				"n",
				"<leader><leader>",
				function()
					vim.diagnostic.open_float({
						border = "rounded",
						focus = false,
						scope = "cursor",
					})
				end
			)
			vim.keymap.set(
				"n",
				"<leader>ii",
				function()
					vim.lsp.buf.hover({
						border = "rounded",
						max_width = 80,
						max_height = 20,
					})
				end,
				opts
			)

			-- find
			vim.keymap.set( "n", "<leader>fr", require( "telescope.builtin" ).lsp_references, opts )
			vim.keymap.set( "n", "<leader>fs", require( "telescope.builtin" ).lsp_document_symbols, opts )
			vim.keymap.set( "n", "<leader>fw", require( "telescope.builtin" ).lsp_workspace_symbols, opts )

			-- actions
			vim.keymap.set( "n", "<leader>ar", vim.lsp.buf.rename, opts )
			vim.keymap.set( "n", "<leader>aa", vim.lsp.buf.code_action, opts )
		end,
	}
)

vim.keymap.set(
	"n",
	"<leader>id",
	function()
		require( "trouble" ).toggle( "diagnostics" )
	end,
	{ desc = "Toggle Trouble" }
)

vim.keymap.set(
	"n",
	"<C-/>",
	function()
		require( "Comment.api" ).toggle.linewise.current()
	end,
	{ desc = "Toggle comment" }
)

vim.keymap.set(
	"v",
	"<C-/>",
	function()
		require( "Comment.api" ).toggle.linewise( vim.fn.visualmode() )
	end,
	{ desc = "Toggle comment" }
)
