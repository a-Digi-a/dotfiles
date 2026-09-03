-- Variables

terminal = "ghostty"
fileManager = "nautilus"
-- menu = "qs -c noctalia-shell ipc call launcher toggle"
menu = "noctalia msg panel-toggle launcher"
mainMod = "SUPER"

-- Import Other Files

require("binds")
require("env-vars")
require("workspaces")
require("window-rules")
require("input")
require("autostart")
require("monitors")
require("visuals")

-- For Noctalia Color templates
require("noctalia").apply_theme()
