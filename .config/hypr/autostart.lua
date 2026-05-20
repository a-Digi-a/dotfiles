-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd("vesktop", { workspace = 3 })
	hl.exec_cmd("spotify", { workspace = 5 })
	hl.exec_cmd("zen-browser", { workspace = 4 })
	hl.exec_cmd("QT_QPA_PLATFORMTHEME=gtk3 qs -c noctalia-shell")
	hl.exec_cmd("udiskie")
	hl.exec_cmd("steam", { workspace = 1 })
end)
