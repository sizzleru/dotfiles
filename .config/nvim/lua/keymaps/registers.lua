-- Registers
vim.keymap.set(
	"n",
	"<leader>fr",
	function()
		require( "telescope.builtin" ).registers()
	end,
	{ desc = "Find registers" }
)

-- Oil
local oil_bookmarks = {}
local oil_bookmarks_file = vim.fn.stdpath( "data" ) .. "/oil_bookmarks.json"

local function load_bookmarks()
	local file = io.open( oil_bookmarks_file, "r" )
	if file then
		local content = file:read( "*a" )
		file:close()
		oil_bookmarks = vim.fn.json_decode( content ) or {}
	end
end

local function save_bookmarks()
	local file = io.open( oil_bookmarks_file, "w" )
	if file then
		file:write( vim.fn.json_encode( oil_bookmarks ) )
		file:close()
	end
end

load_bookmarks()

vim.api.nvim_create_autocmd(
	"FileType",
	{
		pattern = "oil",
		callback = function()

			-- set bookmark
			vim.keymap.set(
				"n",
				"m",
				function()
					if vim.bo.filetype ~= "oil" then
						--vim.api.nvim_feedkeys( "m", "n", false )
						return "m"
					end

					local dir = require( "oil" ).get_current_dir()
					vim.ui.input(
						{ prompt = "Bookmark key: " },
						function(key)
							if key and #key == 1 then
								oil_bookmarks[ key ] = dir
								save_bookmarks()
								vim.notify( "Bookmarked [" .. key .. "] -> " .. dir )
							end
						end
					)
				end,
				{ buffer = true }
			)

			-- open bookmark
			vim.keymap.set(
				"n",
				"`",
				function()
					if vim.tbl_isempty( oil_bookmarks ) then
						vim.notify( "No oil_bookmarks set" )
						return
					end

					local items = {}
					for key, path in pairs( oil_bookmarks ) do
						table.insert( items, "[" .. key .. "] " .. path )
					end

					vim.ui.select(
						items,
						{ prompt = "Oil oil_bookmarks:" },
						function( choice )
							if choice then
								local key = choice:match( "%[(.-)%]" )
								require( "oil" ).open( oil_bookmarks[key] )
							end
						end
					)
				end,
				{ buffer = true, desc = "Open Oil bookmark" }
			)

			-- delete bookmark
			vim.keymap.set(
				"n",
				"<leader>bd",
				function()
					if vim.tbl_isempty( oil_bookmarks ) then
						vim.notify( "No bookmarks set" )
						return
					end

					local items = {}
					for key, path in pairs( oil_bookmarks ) do
						table.insert( items, "[" .. key .. "] " .. path )
					end

					vim.ui.select(
						items,
						{ prompt = "Delete bookmark:" },
						function(choice)
							if choice then
								local key = choice:match( "%[(.-)%]" )
								oil_bookmarks[ key ] = nil
								save_bookmarks()
								vim.notify( "Deleted bookmark [" .. key .. "]" )
							end
						end
					)
				end,
				{ buffer = true, desc = "Delete Oil bookmark" }
			)
		end
	}
)
