local v = require( "variables" )

-- Session
hl.bind( v.mod.."+shift+f1", hl.dsp.exec_cmd( "hyprctl keyword decoration:inactive_opacity 0.4" ) )
hl.bind( v.mod.."+shift+f2", hl.dsp.exec_cmd( "hyprctl keyword decoration:inactive_opacity 0.8" ) )
hl.bind( v.mod.."+shift+f4", hl.dsp.exit() )
hl.bind( v.mod.."+shift+f5", hl.dsp.exec_cmd( "hyprlctl reload" ) )
