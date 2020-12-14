-- Leader Key
vim.g.mapleader = " "
-- Map jk for ESC
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- -- Move between vim-tabs
vim.api.nvim_set_keymap('n', '<a-m>', [[:tabNext<CR>]], {})

-- -- Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with line wrapping on, this can cause the cursor to actually skip a few lines on the screen because it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down' to mean the next line on the screen
vim.api.nvim_set_keymap('n', 'j', 'gj', {})
vim.api.nvim_set_keymap('n', 'k', 'gk', {})

-- -- Scroll page horizontally centres
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', {})
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {})

-- Do Y to yank till the end of the line
vim.api.nvim_set_keymap('n', 'Y', 'y$', {})

-- Map ctrl-movement keys to window switching
vim.api.nvim_set_keymap('', '<C-k>', '<C-w><Up>', {})
vim.api.nvim_set_keymap('', '<C-j>', '<C-w><Down>', {})
vim.api.nvim_set_keymap('', '<C-l>', '<C-w><Right>', {})
vim.api.nvim_set_keymap('', '<C-h>', '<C-w><Left>', {})