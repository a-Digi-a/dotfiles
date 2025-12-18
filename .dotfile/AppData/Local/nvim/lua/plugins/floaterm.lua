return {
  'nvzone/floaterm',
  dependencies = 'nvzone/volt',
  opts = {
    size = { h = 70, w = 70 },
  },
  cmd = 'FloatermToggle',
  vim.keymap.set({ 'n' }, '<leader>tt', ':FloatermToggle<CR>', { desc = '[T]oggle [T]erminal' }),
}
