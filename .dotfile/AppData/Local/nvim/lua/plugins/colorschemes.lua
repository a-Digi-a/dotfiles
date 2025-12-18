return {
  {
    'tingey21/telescope-colorscheme-persist.nvim',
    lazy = false, -- Required: Load on startup to set the colorscheme
    config = function()
      require('telescope-colorscheme-persist').setup {
        keybind = '<leader>ft',
      }
    end,

    dependencies = {
      'nvim-telescope/telescope.nvim',

      'folke/tokyonight.nvim',
      'rebelot/kanagawa.nvim',
      'Th3Whit3Wolf/space-nvim',
      'ellisonleao/gruvbox.nvim',
      'neanias/everforest-nvim',
      'olimorris/onedarkpro.nvim',
      'bluz71/vim-nightfly-colors',
      'https://codeberg.org/evergarden/nvim.git',
      'olivercederborg/poimandres.nvim',
      'xero/miasma.nvim',
      'ribru17/bamboo.nvim',
      'catppuccin/nvim',
    },
  },
}
