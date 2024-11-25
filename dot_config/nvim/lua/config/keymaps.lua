local map = vim.keymap.set

-- buffer
map({'n','v'}, '<leader>qq', '<cmd>qa!<cr>', {desc = 'Force Quit all'})
map({'n','v'}, '<leader>qw', '<cmd>wqa<cr>', {desc = 'Save and Quit all'})
map({'n','v'}, '<leader>x', '<cmd>close<cr>', {desc = 'Close current window'})
map({'n','v'}, '<leader>w', '<cmd>w<cr>', {desc = 'Write current buffer'})
map({'n','v'}, '<leader>W', '<cmd>wa<cr>', {desc = 'Write all buffers'})

-- Lazy
map({'n','v'}, '<leader>l', '<cmd>Lazy<cr>', {desc = 'Open Lazy'})

-- Mason
map({'n','v'}, '<leader>cm', '<cmd>Mason<cr>', {desc = 'Open Mason'})

-- whichkey
map({'n','v'}, '<leader>?', '<cmd>WhichKey<cr>', {desc = 'show all keybinds'})

-- explorer: oil
map({'n','v'}, '<leader>el', '<cmd>:lua require("oil").toggle_float()<cr>', {desc = 'Open Directory with Oil'})

-- explorer: nvim-tree
map({'n','v'}, '<leader>eo', '<cmd>:NvimTreeFocus<cr>', {desc = 'Open Directory Tree'})
map({'n','v'}, '<leader>et', '<cmd>:NvimTreeToggle<cr>', {desc = 'Toggle Directory Tree'})
map({'n','v'}, '<leader>ec', '<cmd>:NvimTreeClose<cr>', {desc = 'Close Directory Tree'})


-- telescope
local ts_builtin = require("telescope.builtin")
map({'n','v'}, '<leader> ', ts_builtin.find_files, {desc = 'Telescope Find files'})
map({'n','v'}, '<leader>fg', ts_builtin.live_grep, {desc = 'Telescope Live Grep'})
map({'n','v'}, '<leader>ff', ts_builtin.builtin, {desc = 'Telescope Lists Pickers'})

-- leap
map({'n','v'}, 'f', '<Plug>(leap)', {desc = 'Jump to local text'})
map({'n','v'}, 'F', '<Plug>(leap-from-window)', {desc = 'Jump to other window text'})
