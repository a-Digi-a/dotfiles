-- Window Rules
hl.window_rule({ name = "move-obs", match = { class = "com.obsproject.Studio" }, workspace = 6 })
hl.window_rule({ name = "move-vesktop", match = { class = "vesktop" }, workspace = 3 })
hl.window_rule({ name = "move-discord", match = { class = "discord" }, workspace = 3 })
hl.window_rule({ name = "move-zen", match = { class = "zen" }, workspace = 4 })
hl.window_rule({ name = "move-spotify", match = { class = "spotify" }, workspace = 5 })

-- Ignore maximize requests from all apps.
hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
	name = "fix-unity-drags",
	match = {
		class = "^(Unity)$",
		title = "^(UnityTooltipWindow)$",
	},
	no_focus = true,
})

-- Layer Rules
hl.layer_rule({
	name = "noctalia",
	match = { namespace = "noctalia-background-.*$" },
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
