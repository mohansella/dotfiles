local map = vim.keymap.set

-- motions
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
-- others
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- buffer
map({ 'n', 'v' }, '<leader>qq', '<cmd>qa!<cr>', { desc = 'Force Quit all' })
map({ 'n', 'v' }, '<leader>qw', '<cmd>wqa<cr>', { desc = 'Save and Quit all' })
map({ 'n', 'v' }, '<leader>x', '<cmd>close<cr>', { desc = 'Close current window' })
map({ 'n', 'v' }, '<leader>w', '<cmd>w<cr>', { desc = 'Write current buffer' })
map({ 'n', 'v' }, '<leader>W', '<cmd>wa<cr>', { desc = 'Write all buffers' })

-- Lazy
map({ 'n', 'v' }, '<leader>l', '<cmd>Lazy<cr>', { desc = 'Open Lazy' })

-- Mason
map({ 'n', 'v' }, '<leader>cm', '<cmd>Mason<cr>', { desc = 'Open Mason' })

-- explorer: oil
map({ 'n', 'v' }, '<leader>el', '<cmd>:lua require("oil").toggle_float()<cr>', { desc = 'Open Directory with Oil' })

-- explorer: nvim-tree
map({ 'n', 'v' }, '<leader>eo', '<cmd>:NvimTreeFocus<cr>', { desc = 'Open Directory Tree' })
map({ 'n', 'v' }, '<leader>et', '<cmd>:NvimTreeToggle<cr>', { desc = 'Toggle Directory Tree' })
map({ 'n', 'v' }, '<leader>ec', '<cmd>:NvimTreeClose<cr>', { desc = 'Close Directory Tree' })

-- telescope
map({ 'n', 'v' }, '<leader> ', '<cmd>Telescope find_files<cr>', { desc = 'Telescope Find files' })
map({ 'n', 'v' }, '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Telescope Live Grep' })
map({ 'n', 'v' }, '<leader>ff', '<cmd>Telescope builtin<cr>', { desc = 'Telescope Lists Pickers' })
-- telescope extensions
map({ 'n', 'v' }, '<leader>fp', '<cmd>Telescope projects<cr>', { desc = 'Telescope Lists Projects' })

-- code
map({ 'n', 'v' }, 'gd', '<cmd>Telescope lsp_definitions<cr>', { desc = 'Goto Definition' })
map({ 'n', 'v' }, 'gr', '<cmd>Telescope lsp_references<cr>', { desc = 'References' })
map({ 'n', 'v' }, 'gI', '<cmd>Telescope lsp_implementations<cr>', { desc = 'Goto Implementation' })
map({ 'n', 'v' }, 'gy', '<cmd>Telescope lsp_type_definitions<cr>', { desc = 'Goto T[y]pe definitions' })
map({ 'n', 'v' }, '<leader>cf', function() require("conform").format({ lsp_fallback = true }) end, { desc = 'Format using conform' })
map({ 'n', 'v' }, '<leader>cr', '<cmd>:lua vim.lsp.buf.rename()<cr>', { desc = 'Rename' })
