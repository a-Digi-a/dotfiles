-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd("steam", { workspace = 1 })
	hl.exec_cmd("discord", { workspace = 3 })
	hl.exec_cmd("zen-browser", { workspace = 4 })
	hl.exec_cmd("spotify", { workspace = 5 })

	hl.exec_cmd("noctalia")
	hl.exec_cmd("udiskie")

	hl.exec_cmd("easyeffects --gapplication-service")
	hl.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 0.35")
end)
