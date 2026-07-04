-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd("steam", { workspace = 1 })
	hl.exec_cmd("discord", { workspace = 3 })
	hl.exec_cmd("zen-browser", { workspace = 4 })
	hl.exec_cmd("spotify", { workspace = 5 })

	hl.exec_cmd("QT_QPA_PLATFORMTHEME=gtk3 qs -c noctalia-shell")
	hl.exec_cmd("udiskie")

	-- XDG Desktop Portal Fix
	hl.exec_cmd(
		"bash -c 'sleep 1 && killall -e xdg-desktop-portal-hyprland; killall xdg-desktop-portal; /usr/lib/xdg-desktop-portal-hyprland & sleep 2 && /usr/lib/xdg-desktop-portal &'"
	)
end)
