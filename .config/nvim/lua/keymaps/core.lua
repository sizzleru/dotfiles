-- unset <Space>
vim.keymap.set( "n", "<Space>", "<Nop>" )

-- <Escape> to cancel any popups
vim.keymap.set(
	"n",
	"<Esc>",
	function()
		vim.cmd.fclose()
		vim.cmd.nohlsearch()
	end
)

-- Makefile
vim.keymap.set(
	"n",
	"<leader>mm",
	function()
		local file = vim.fs.find( "Makefile", { upward = true } )[1]
		if not file then
			vim.notify( "No Makefile found", vim.log.levels.WARN )
			return
		end

		local dir = vim.fs.dirname( file )
		vim.cmd( "botright split | terminal make -C " .. vim.fn.fnameescape( dir ) )
	end
)
vim.keymap.set(
	"n",
	"<leader>mb",
	function()
		local file = vim.fs.find( "Makefile", { upward = true } )[1]
		if not file then
			vim.notify( "No Makefile found", vim.log.levels.WARN )
			return
		end

		local dir = vim.fs.dirname( file )
		vim.cmd( "botright split | terminal make build -C " .. vim.fn.fnameescape( dir ) )
	end
)
vim.keymap.set(
	"n",
	"<leader>mr",
	function()
		local file = vim.fs.find( "Makefile", { upward = true } )[1]
		if not file then
			vim.notify( "No Makefile found", vim.log.levels.WARN )
			return
		end

		local dir = vim.fs.dirname( file )
		vim.cmd( "botright split | terminal make run -C " .. vim.fn.fnameescape( dir ) )
	end
)
vim.keymap.set(
	"n",
	"<leader>ms",
	function()
		local file = vim.fs.find( "Makefile", { upward = true } )[1]
		if not file then
			vim.notify( "No Makefile found", vim.log.levels.WARN )
			return
		end

		local dir = vim.fs.dirname( file )
		vim.cmd( "botright split | terminal make setup -C " .. vim.fn.fnameescape( dir ) )
	end
)
vim.keymap.set(
	"n",
	"<leader>mc",
	function()
		local file = vim.fs.find( "Makefile", { upward = true } )[1]
		if not file then
			vim.notify( "No Makefile found", vim.log.levels.WARN )
			return
		end

		local dir = vim.fs.dirname( file )
		vim.cmd( "botright split | terminal make check -C " .. vim.fn.fnameescape( dir ) )
	end
)
vim.keymap.set(
	"n",
	"<leader>mC",
	function()
		local file = vim.fs.find( "Makefile", { upward = true } )[1]
		if not file then
			vim.notify( "No Makefile found", vim.log.levels.WARN )
			return
		end

		local dir = vim.fs.dirname( file )
		vim.cmd( "botright split | terminal make clean -C " .. vim.fn.fnameescape( dir ) )
	end
)

vim.keymap.set(
	"n",
	"<leader>mq",
	function()
		local file = vim.fs.find( "Makefile", { upward = true } )[1]
		if not file then
			vim.notify( "No Makefile found", vim.log.levels.WARN )
			return
		end

		local dir = vim.fs.dirname( file )
		vim.cmd( "botright split | terminal make quiet -C " .. vim.fn.fnameescape( dir ) )
	end
)
