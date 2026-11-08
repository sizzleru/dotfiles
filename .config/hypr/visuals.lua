hl.config({
	general = {
		-- gaps
		gaps_in = 6,
		gaps_out = 12,

		-- borders
		border_size = 2,
		col = {
			active_border = { colors = { "rgba(f5c2e7ff)" } },
			inactive_border = { colors = { "rgba(1e1e2eff)" } }
		}
	},

	decoration = {
		rounding = 12,

		--drop_shadow = true
		--shadow_range = 6
		--shadow_render_power = 2
		--col.shadow = rgba(00000055)

		blur = {
			enabled = true,
			size = 6,
			passes = 2,
			new_optimizations = true,
		},

		inactive_opacity = 0.8,
		active_opacity = 1,
	},

	animations = {
		enabled = true,
	}
})

hl.curve( "easeOut", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } } )
hl.animation( { leaf = "windows",		enabled = true, speed = 6, bezier = "easeOut" } )
hl.animation( { leaf = "border",		enabled = true, speed = 10, bezier = "default" } )
hl.animation( { leaf = "fade",			enabled = true, speed = 6, bezier = "easeOut" } )
hl.animation( { leaf = "workspaces",	enabled = true, speed = 5, bezier = "easeOut" } )
