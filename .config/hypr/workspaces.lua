local v = require( "variables" )

-- Switching
for i = 1, 10 do
	local key = tostring( i % 10 ) -- for the last number ( 0 -> 10 )
	hl.bind( v.mod.."+"..key, hl.dsp.focus({ workspace = i }) )
	hl.bind( v.mod.."+shift+"..key, hl.dsp.window.move({ workspace = i, follow = false }) )
	hl.bind( v.mod.."+ctrl+shift+"..key, hl.dsp.window.move({ workspace = i }) )
end

-- Mouse
hl.bind( v.mod.."+mouse_down", hl.dsp.focus({ workspace = "e+1" }) )
hl.bind( v.mod.."+mouse_up", hl.dsp.focus({ workspace = "e-1" }) )
hl.bind( v.mod.."+shift+mouse_down", hl.dsp.window.move({ workspace = "e+1" }) )
hl.bind( v.mod.."+shift+mouse_up", hl.dsp.window.move({ workspace = "e-1" }) )
