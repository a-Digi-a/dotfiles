local function enable_transparency()
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
end
return {
  { 'folke/tokyonight.nvim', lazy = true },
  { 'rebelot/kanagawa.nvim', lazy = true },
  { 'Th3Whit3Wolf/space-nvim', lazy = true },
  { 'ellisonleao/gruvbox.nvim', lazy = true },
  { 'neanias/everforest-nvim', lazy = true },
  { 'olimorris/onedarkpro.nvim', lazy = true },
  { 'bluz71/vim-nightfly-colors', lazy = true },
  { 'https://codeberg.org/evergarden/nvim.git', lazy = true },
  { 'olivercederborg/poimandres.nvim', lazy = true },
  { 'xero/miasma.nvim', lazy = true },
  { 'ribru17/bamboo.nvim', lazy = true },
  {
    'catppuccin/nvim',
    lazy = true,
    -- config = function()
    -- vim.cmd.colorscheme 'catppuccin-macchiato'
    -- enable_transparency()
    -- end,
  },
  {
    'water-sucks/darkrose.nvim',
    lazy = true,
    -- priority = 1000,
    --   config = function()
    --     vim.cmd.colorscheme 'darkrose'
    --     enable_transparency()
    --   end,
  },

  {
    'rose-pine/neovim',
    config = function()
      vim.cmd.colorscheme 'rose-pine'
      enable_transparency()
    end,
  },
}
