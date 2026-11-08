local v = require( "variables" )

-- General
hl.bind( v.mod.."+w", hl.dsp.window.close() )
hl.bind( v.mod.."+space", hl.dsp.window.float({ action = "toggle" }) )
hl.bind( v.mod.."+c", hl.dsp.window.center() )
hl.bind( v.mod.."+p", hl.dsp.window.pin() )

-- Focus
hl.bind( v.mod.."+"..v.left, hl.dsp.focus({ direction = "left" }) )
hl.bind( v.mod.."+"..v.down, hl.dsp.focus({ direction = "down" }) )
hl.bind( v.mod.."+"..v.up, hl.dsp.focus({ direction = "up" }) )
hl.bind( v.mod.."+"..v.right, hl.dsp.focus({ direction = "right" }) )

-- Moving
hl.bind( v.mod.."+shift+"..v.left, hl.dsp.window.move({ direction = "left" }) )
hl.bind( v.mod.."+shift+"..v.down, hl.dsp.window.move({ direction = "down" }) )
hl.bind( v.mod.."+shift+"..v.up, hl.dsp.window.move({ direction = "up" }) )
hl.bind( v.mod.."+shift+"..v.right, hl.dsp.window.move({ direction = "right" }) )

-- Resizing
hl.define_submap(
	"resize",
	function()
		hl.bind( v.left, hl.dsp.window.resize({ x = -20, y = 0, relative = true }) )
		hl.bind( v.down, hl.dsp.window.resize({ x = 0, y = -20, relative = true }) )
		hl.bind( v.up, hl.dsp.window.resize({ x = 0, y = 20, relative = true }) )
		hl.bind( v.right, hl.dsp.window.resize({ x = 20, y = 0, relative = true }) )
		hl.bind( "escape", hl.dsp.submap( "reset" ) )
	end
)
hl.bind( v.mod.."+shift+r", hl.dsp.submap( "resize" ) )

-- Mouse controls
hl.bind( v.mod.."+"..v.left_click, hl.dsp.window.drag(), { mouse = true } )
hl.bind( v.mod.."+"..v.right_click, hl.dsp.window.resize(), { mouse = true } )
