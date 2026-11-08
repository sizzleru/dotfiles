local v = require( "variables" )

hl.bind( v.mod.."+d", hl.dsp.exec_cmd( "wofi --show drun --allow-images" ) )
hl.bind( v.mod.."+e", hl.dsp.exec_cmd( "thunar" ) )
hl.bind( v.mod.."+t", hl.dsp.exec_cmd( "kitty" ) )
hl.bind( "print", hl.dsp.exec_cmd([[ grim -g "$(slurp)" - | tee >(wl-copy) | swapp -f - ]]) )
hl.bind( "alt_r", hl.dsp.exec_cmd([[ rofimoji --selector wofi--action copy &&  sleep 0.05 &&  wtype  "$(wl-paste)" ]]) )

-- Startup - display
hl.on(
	"hyprland.start",
	function()
		hl.exec_cmd([[ mpvpaper '*' ${HOME}/Assets/hypr/backgrounds/wallpaper --mpv-options="--loop-file=inf" ]])

		hl.exec_cmd([[ waybar -c ~/.config/waybar/DP-1.config -s ~/.config/waybar/style.css ]])
		hl.exec_cmd([[ waybar -c ~/.config/waybar/DP-2.config -s ~/.config/waybar/style.css ]])
		hl.exec_cmd([[ waybar -c ~/.config/waybar/DP-3.config -s ~/.config/waybar/style.css ]])
		hl.exec_cmd([[ waybar -c ~/.config/waybar/HDMI-A-1.config -s ~/.config/waybar/style.css ]])

		-- Startup - applications
		hl.exec_cmd([[ thunderbird ]])
		hl.exec_cmd([[ todoist ]])
		hl.dispatch( hl.dsp.exec_cmd( [[ pwvucontrol ]], { workspace = "special:volumemixer silent" } ) )

		-- Startup - background daemons
		hl.exec_cmd([[ ktailctl ]])
		hl.exec_cmd([[ streamdeck -n ]])
		hl.exec_cmd([[ fcitx5 -d ]])
	end
)

--# Waydroid
--windowrule =	match:class ^(Waydroid)$, float on
--windowrule =	match:class ^(Waydroid)$, size 1600 1000
--windowrule =	match:class ^(Waydroid)$, move 50 40
--windowrule =	match:class ^(Waydroid)$, rounding 0
