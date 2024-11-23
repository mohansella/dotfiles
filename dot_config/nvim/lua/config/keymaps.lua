local map = vim.keymap.set

-- common
map({'n','v'}, '<leader>q', '<cmd>qa<cr>', {desc = 'Quit all'})
map({'n','v'}, '<leader>x', '<cmd>close<cr>', {desc = 'Close current window'})
map({'n','v'}, '<leader>w', '<cmd>w<cr>', {desc = 'Write current buffer'})
map({'n','v'}, '<leader>W', '<cmd>wa<cr>', {desc = 'Write all buffers'})

-- whichkey
map({'n','v'}, '<leader>?', '<cmd>WhichKey<cr>', {desc = 'show all keybinds'})

