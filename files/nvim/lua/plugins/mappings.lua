-- Easy-motion key
vim.api.nvim_set_keymap('n', '<leader>', '<Plug>(easymotion-prefix)', {})

-- Word-motion prefix
vim.g.wordmotion_prefix = ','

-- Intent guides
vim.g.indent_guides_start_level = 2
vim.g.indent_guides_enable_on_vim_startup = 1

-- Abbreviations
vim.api.nvim_exec(
[[
function! InitAbbreviations()
Abolish! -cmdline co{snt,tsn,tns,nts} co{nst}
Abolish! -cmdline ret{utn,nurn} ret{urn}
Abolish! -cmdline aw{ati,tai,tia} aw{ait}
Abolish! -cmdline len{ght} len{gth}
Abolish! -cmdline tr{eu} tr{ue}
Abolish! -cmdline fun{citon} fun{ction}
endfunction
autocmd VimEnter * call InitAbbreviations()
]],
true
)

-- Switch key toggles
vim.g.switch_mapping = "-"

-- Testing with vim-test
vim.api.nvim_set_keymap('n', '<leader>t', [[:TestNearest<CR>]], { silent = true })
vim.api.nvim_set_keymap('n', 't<C-f>', [[:TestFile<CR>]], { silent = true })
vim.api.nvim_set_keymap('n', 't<C-s>', [[:TestSuite<CR>]], { silent = true })
vim.api.nvim_set_keymap('n', 't<C-l>', [[:TestLast<CR>]], { silent = true })
vim.api.nvim_set_keymap('n', 't<C-g>', [[:TestVisit<CR>]], { silent = true })

-- For scrolling in test
vim.api.nvim_set_keymap('t', '<C-o>', '<C-\\><C-n>', {})

-- Jest config
vim.cmd [[let g:test#javascript#runner = "jest"]]
vim.cmd [[let g:test#javascript#jest#executable = 'npx -n --experimental-vm-modules -n --no-warnings jest --colors']]

-- Search in files with ctrlsf
vim.api.nvim_set_keymap('n', '<C-f>f', '<Plug>CtrlSFPrompt', {})
vim.api.nvim_set_keymap('v', '<C-f>f', '<Plug>CtrlSFVwordPath', {})
vim.api.nvim_set_keymap('v', '<C-f>F', '<Plug>CtrlSFVwordExec', {})
vim.api.nvim_set_keymap('n', '<C-f>n', '<Plug>CtrlSFCwordPath', {})
vim.api.nvim_set_keymap('n', '<C-f>p', '<Plug>CtrlSFPwordPath', {})
vim.api.nvim_set_keymap('n', '<C-f>o', ':CtrlSFOpen<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>t', ':CtrlSFToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-f>t', ':CtrlSFToggle<CR>', { noremap = true })

-- FTerm
require('FTerm').setup({
  dimensions = { height = 0.8, width = 0.8, row = 0.5, col = 0.5 }
})
vim.api.nvim_set_keymap('n', '<A-i>', ':FTermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<A-i>', '<C-\\><C-n>:FTermToggle<CR>', { noremap = true, silent = true })

-- FZF
vim.api.nvim_set_keymap('n', '<leader>b', [[:Buffers<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>o', [[:GFiles .<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fc', [[:Commits<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>aa', [[:Ag<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ff', [[:Files<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gs', [[:Gstatus<CR>]], { noremap = true })

-- Mapping selecting mappings
-- nmap <leader><tab> <plug>(fzf-maps-n)
-- xmap <leader><tab> <plug>(fzf-maps-x)
-- omap <leader><tab> <plug>(fzf-maps-o)

-- " Insert mode completion
-- imap <c-x><c-k> <plug>(fzf-complete-word)
-- imap <c-x><c-f> <plug>(fzf-complete-path)
-- imap <c-x><c-j> <plug>(fzf-complete-file-ag)
-- imap <c-x><c-l> <plug>(fzf-complete-line)

-- command! -bang -nargs=? -complete=dir GFiles
--       \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

-- command! -bang -nargs=? -complete=dir Files
--       \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)