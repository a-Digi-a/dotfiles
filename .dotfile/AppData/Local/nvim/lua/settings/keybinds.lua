-- BASIC KEYBINDS --

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode by pressing esc twice
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Add an <esc> keybind to save time (and fingers)
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = false })

-- Keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between windows
-- :help wincmd for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Make moving windows easier
vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

vim.keymap.set('n', '<leader>cd', ':cd %:h<CR>', { desc = '[C]hange [D]irectory' })

-- Keyboard users
vim.keymap.set('n', '<C-t>', function()
  require('menu').open 'default'
end, {})

-- mouse users + nvimtree users!
vim.keymap.set({ 'n', 'v' }, '<RightMouse>', function()
  require('menu.utils').delete_old_menus()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  -- clicked buf
  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == 'NvimTree' and 'nvimtree' or 'default'

  require('menu').open(options, { mouse = true })
end, {})
