local v = require( "variables" )

hl.window_rule({
	name = "volumemixer",
	match = { class = "com.saivert.pwvucontrol" },
	float = true,
	center = true,
	size = "1600 900",
	workspace = "special:volumemixer silent",
})
hl.bind( v.mod.."+v", hl.dsp.workspace.toggle_special( "volumemixer" ) )
