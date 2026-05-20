-- Autostart
hl.on("hyprland.start", function()
	hl.dsp.exec_cmd("vesktop", { workspace = 3 })
	hl.dsp.exec_cmd("spotify", { workspace = 5 })
	hl.dsp.exec_cmd("zen-browser", { workspace = 4 })
	hl.dsp.exec_cmd("QT_QPA_PLATFORMTHEME=gtk3 qs -c noctalia-shell")
	hl.dsp.exec_cmd("udiskie")
	hl.dsp.exec_cmd("steam", { workspace = 1 })
end)
