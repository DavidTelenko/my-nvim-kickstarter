-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll half screen up with stablization' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll half screen down with stabilization' })

vim.keymap.set('n', '<C-s>', ':update<cr>', { desc = 'A bit more convenient save file' })
vim.keymap.set('i', '<C-s>', '<Esc>:update<cr>gi', { desc = 'A bit more convenient save file' })

vim.keymap.set('i', '<A-k>', '<C-o>gk', { desc = 'Navigation up in insert mode' })
vim.keymap.set('i', '<A-h>', '<Left>', { desc = 'Navigation left in insert mode' })
vim.keymap.set('i', '<A-l>', '<Right>', { desc = 'Navigation right in insert mode' })
vim.keymap.set('i', '<A-j>', '<C-o>gj', { desc = 'Navigation down in insert mode' })
vim.keymap.set('i', '<A-b>', '<C-o>b', { desc = 'Navigation back word in insert mode' })
vim.keymap.set('i', '<A-w>', '<C-o>w', { desc = 'Navigation forward word in insert mode' })

-- vim.keymap.set('i', '<C-H>', '<Esc>dbxi', { desc = 'Ctrl + Backspace \"default\" behavior' })

vim.keymap.set({ 'x', 'n' }, '<leader>tu', ':Translate UK<cr>', { desc = 'Translate to Ukrainian' })
vim.keymap.set({ 'x', 'n' }, '<leader>te', ':Translate EN<cr>', { desc = 'Translate to English' })

vim.keymap.set('n', '<leader>o', ':luafile %<cr>', { desc = 'Source file' })

require('which-key').register({ ['<leader>t'] = "[T]ranslate" }, { mode = { 'x', 'n' } })
-- vim: ts=2 sts=2 sw=2 et
