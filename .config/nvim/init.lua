-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("settings.options")
require("settings.keybinds")
require("settings.autocommands")
