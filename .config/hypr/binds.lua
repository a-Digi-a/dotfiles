---@diagnostic disable: param-type-mismatch, missing-parameter
-- Main binds
hl.bind({ mods = mainMod, key = "RETURN", dispatcher = "exec", params = terminal })
hl.bind({ mods = mainMod .. " SHIFT", key = "Q", dispatcher = "killactive" })
hl.bind({
	mods = mainMod .. " SHIFT",
	key = "S",
	dispatcher = "exec",
	params = 'grim -g "$(slurp)" - | wl-copy',
})
hl.bind({ mods = mainMod, key = "X", dispatcher = "fullscreen" })
hl.bind({
	mods = mainMod,
	key = "M",
	dispatcher = "exec",
	params = "command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit",
})
hl.bind({
	mods = mainMod,
	key = "E",
	dispatcher = "exec",
	params = fileManager,
})
hl.bind({ mods = mainMod, key = "T", dispatcher = "togglefloating" })
hl.bind({ mods = mainMod, key = "W", dispatcher = "exec", params = menu })
hl.bind({
	mods = mainMod,
	key = "backspace",
	dispatcher = "exec",
	params = "qs -c noctalia-shell ipc call sessionMenu toggle",
})

-- Switch workspaces
for i = 1, 9 do
	hl.bind({ mods = mainMod, key = tostring(i), dispatcher = "workspace", params = tostring(i) })
end
hl.bind({ mods = mainMod, key = "0", dispatcher = "workspace", params = "10" })

-- Move active window to workspace
for i = 1, 9 do
	hl.bind({ mods = mainMod .. " SHIFT", key = tostring(i), dispatcher = "movetoworkspace", params = tostring(i) })
end
hl.bind({ mods = mainMod .. " SHIFT", key = "0", dispatcher = "movetoworkspace", params = "10" })

-- Move workspace to monitor
hl.bind({ mods = mainMod, key = "a", dispatcher = "movecurrentworkspacetomonitor", params = "l" })
hl.bind({ mods = mainMod, key = "f", dispatcher = "movecurrentworkspacetomonitor", params = "r" })
hl.bind({ mods = mainMod, key = "d", dispatcher = "movecurrentworkspacetomonitor", params = "u" })
hl.bind({ mods = mainMod, key = "s", dispatcher = "movecurrentworkspacetomonitor", params = "d" })

-- Move focus
hl.bind({ mods = mainMod, key = "h", dispatcher = "movefocus", params = "l" })
hl.bind({ mods = mainMod, key = "l", dispatcher = "movefocus", params = "r" })
hl.bind({ mods = mainMod, key = "k", dispatcher = "movefocus", params = "u" })
hl.bind({ mods = mainMod, key = "j", dispatcher = "movefocus", params = "d" })

-- Move window
hl.bind({ mods = mainMod .. " SHIFT", key = "h", dispatcher = "movewindow", params = "l" })
hl.bind({ mods = mainMod .. " SHIFT", key = "l", dispatcher = "movewindow", params = "r" })
hl.bind({ mods = mainMod .. " SHIFT", key = "k", dispatcher = "movewindow", params = "u" })
hl.bind({ mods = mainMod .. " SHIFT", key = "j", dispatcher = "movewindow", params = "d" })

-- Move/resize with mouse
hl.bindm({ mods = mainMod, key = "mouse:272", dispatcher = "movewindow" })
hl.bindm({ mods = mainMod, key = "mouse:273", dispatcher = "resizewindow" })

-- Media / brightness keys
hl.bindel({ mods = "", key = "XF86AudioRaiseVolume", dispatcher = "exec", params = "playerctl next" })
hl.bindel({ mods = "", key = "XF86AudioLowerVolume", dispatcher = "exec", params = "playerctl previous" })
hl.bindel({
	mods = "",
	key = "XF86AudioMute",
	dispatcher = "exec",
	params = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle",
})
hl.bindel({
	mods = "",
	key = "XF86AudioMicMute",
	dispatcher = "exec",
	params = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle",
})
hl.bindel({ mods = "", key = "XF86MonBrightnessUp", dispatcher = "exec", params = "brightnessctl -e4 -n2 set 5%+" })
hl.bindel({ mods = "", key = "XF86MonBrightnessDown", dispatcher = "exec", params = "brightnessctl -e4 -n2 set 5%-" })

-- Playerctl
hl.bindl({ mods = "", key = "XF86AudioNext", dispatcher = "exec", params = "playerctl next" })
hl.bindl({ mods = "", key = "XF86AudioPause", dispatcher = "exec", params = "playerctl play-pause" })
hl.bindl({ mods = "", key = "XF86AudioPlay", dispatcher = "exec", params = "playerctl play-pause" })
hl.bindl({ mods = "", key = "XF86AudioPrev", dispatcher = "exec", params = "playerctl previous" })
