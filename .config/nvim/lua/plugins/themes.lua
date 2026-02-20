local function enable_transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		-- config = function()
		--     vim.cmd.colorscheme("tokyonight")
		--     enable_transparency()
		-- end,
	},

	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		-- config = function()
		--     vim.cmd.colorscheme("kanagawa")
		--     enable_transparency()
		-- end,
	},

	{
		"Th3Whit3Wolf/space-nvim",
		lazy = true,
		-- config = function()
		--     vim.cmd.colorscheme("space")
		--     enable_transparency()
		-- end,
	},

	{
		"neanias/everforest-nvim",
		lazy = true,
		-- config = function()
		--     vim.cmd.colorscheme("everforest")
		--     enable_transparency()
		-- end,
	},

	{
		"olimorris/onedarkpro.nvim",
		lazy = true,
		-- config = function()
		-- 	vim.cmd.colorscheme("onedark")
		-- 	enable_transparency()
		-- end,
	},

	{
		"bluz71/vim-nightfly-colors",
		lazy = true,
		-- config = function()
		-- 	vim.cmd.colorscheme("nightfly")
		-- 	enable_transparency()
		-- end,
	},

	{
		"https://codeberg.org/evergarden/nvim.git",
		lazy = true,
		-- config = function()
		--     vim.cmd.colorscheme("evergarden")
		--     enable_transparency()
		-- end,
	},

	{
		"olivercederborg/poimandres.nvim",
		lazy = true,
		-- config = function()
		--     vim.cmd.colorscheme("poimandres")
		--     enable_transparency()
		-- end,
	},

	{
		"xero/miasma.nvim",
		lazy = true,
		-- config = function()
		--     vim.cmd.colorscheme("miasma")
		--     enable_transparency()
		-- end,
	},

	{
		"ribru17/bamboo.nvim",
		lazy = true,
		-- config = function()
		--     vim.cmd.colorscheme("bamboo")
		--     enable_transparency()
		-- end,
	},

	{
		"catppuccin/nvim",
		lazy = true,
		-- config = function()
		-- vim.cmd.colorscheme 'catppuccin-macchiato'
		-- enable_transparency()
		-- end,
	},

	{
		"water-sucks/darkrose.nvim",
		lazy = true,
		-- priority = 1000,
		--   config = function()
		--     vim.cmd.colorscheme 'darkrose'
		--     enable_transparency()
		--   end,
	},

	{
		"rose-pine/neovim",
		-- lazy = true,
		config = function()
			vim.cmd.colorscheme("rose-pine")
			enable_transparency()
		end,
	},

	{
		"ellisonleao/gruvbox.nvim",
		lazy = true,
		-- config = function()
		-- 	vim.cmd.colorscheme("gruvbox")
		-- 	enable_transparency()
		-- end,
	},
}
