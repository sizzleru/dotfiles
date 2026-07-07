vim.api.nvim_create_autocmd(
	"LspAttach",
	{
		callback = function(ev)

			-- goto's
			vim.keymap.set( "n", "<leader>gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "Go to definition" } )
			vim.keymap.set( "n", "<leader>gD", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "Go to implementation" } )
			vim.keymap.set( "n", "<leader>gr", require( "telescope.builtin" ).lsp_references, { buffer = ev.buf, desc = "Go to references" } )
			vim.keymap.set( "n", "<leader>gt", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "Go to type definition" } )
			vim.keymap.set(
				"n",
				"<leader>li",
				function()
					vim.lsp.buf.hover({
						border = "rounded",
						max_width = 80,
						max_height = 20,
					})
				end,
				{ buffer = ev.buf, desc = "[LSP] Inspect object" }
			)

			-- find
			vim.keymap.set( "n", "<leader>fd", require( "telescope.builtin" ).lsp_document_symbols, { buffer = ev.buf, desc = "Find document symbols" } )
			vim.keymap.set( "n", "<leader>fw", require( "telescope.builtin" ).lsp_workspace_symbols, { buffer = ev.buf, desc = "Find workspace symbols" } )

			-- actions
			vim.keymap.set( "n", "<leader>cr", vim.lsp.buf.rename, { buffer = ev.buf, desc = "[Code] Rename variable" } )
			vim.keymap.set( "n", "<leader>ca", vim.lsp.buf.code_action, { buffer = ev.buf, desc = "[Code] Suggested actions" } )
		end,
	}
)


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
	end,
	{ desc = "Diagnose issue" }
)

vim.keymap.set(
	"n",
	"<leader>cp",
	function()
		require( "trouble" ).open({ mode = "diagnostics", focus = true })
	end,
	{ desc = "[Code] Find problems" }
)

vim.keymap.set(
	"n",
	"<leader>cu",
	function()
		vim.cmd.UndotreeToggle()
		vim.cmd.UndotreeFocus()
	end,
	{ desc = "[Code] Undo tree" }
)
