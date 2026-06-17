-- unset <Space>
vim.keymap.set( "n", "<Space>", "<Nop>" )

-- <Escape> to cancel any popups
vim.keymap.set(
	"n",
	"<Esc>",
	function()
		vim.cmd.nohlsearch()
	end,
	{ desc = "Close popups" }
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
	end,
	{ desc = "Run Makefile" }
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
	end,
	{ desc = "Run Makefile with build" }
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
	end,
	{ desc = "Run Makefile with run" }
)

vim.keymap.set(
	"n",
	"<leader>mR",
	function()
		local file = vim.fs.find( "Makefile", { upward = true } )[1]
		if not file then
			vim.notify( "No Makefile found", vim.log.levels.WARN )
			return
		end

		local dir = vim.fs.dirname( file )
		vim.cmd( "botright split | terminal make verbose -C " .. vim.fn.fnameescape( dir ) )
	end,
	{ desc = "Run Makefile with verbose" }
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
	end,
	{ desc = "Run Makefile with setup" }
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
		vim.cmd( "botright split | terminal make verify -C " .. vim.fn.fnameescape( dir ) )
	end,
	{ desc = "Run Makefile with verify" }
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
		vim.cmd( "botright split | terminal make clean -C " .. vim.fn.fnameescape( dir ) )
	end,
	{ desc = "Run Makefile with clean" }
)
