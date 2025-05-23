local map = vim.keymap.set

-- common functions
local function luasnip_jump(val)
  local ls = require("luasnip")
  if ls.jumpable(val) then
    return ls.jump(val)
  end
  local code = val == 1 and "<Down>" or "<Up>"
  local codes = vim.api.nvim_replace_termcodes(code, true, false, true)
  vim.api.nvim_feedkeys(codes, "n", true)
end

-- motions
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", function() luasnip_jump(1) end, { desc = "move down" })
map("i", "<C-k>", function() luasnip_jump(-1) end, { desc = "move up" })
-- others
map("n", "<Esc>", "<cmd>noh<cr><cmd>:NoiceDismiss<cr>", { desc = "general clear highlights" })

-- buffer
map({ 'n', 'v' }, '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit all' })
map({ 'n', 'v' }, '<leader>qf', '<cmd>qa!<cr>', { desc = 'Force Quit all' })
map({ 'n', 'v' }, '<leader>qw', '<cmd>wqa<cr>', { desc = 'Save and Quit all' })
map({ 'n', 'v' }, '<leader>x', '<cmd>close<cr>', { desc = 'Close current window' })
map({ 'n', 'v' }, '<leader>w', '<cmd>w<cr>', { desc = 'Write current buffer' })
map({ 'n', 'v' }, '<leader>W', '<cmd>wa<cr>', { desc = 'Write all buffers' })

-- Lazy
map({ 'n', 'v' }, '<leader>l', '<cmd>Lazy<cr>', { desc = 'Open Lazy' })

-- Mason
map({ 'n', 'v' }, '<leader>cm', '<cmd>Mason<cr>', { desc = 'Open Mason' })

-- explorer: oil
map({ 'n', 'v' }, '<leader>El', '<cmd>:lua require("oil").toggle_float()<cr>', { desc = 'Open Directory with Oil' })

-- explorer: nvim-tree
map({ 'n', 'v' }, '<leader>e', '<cmd>:NvimTreeFocus<cr>', { desc = 'Open Directory Tree' })
map({ 'n', 'v' }, '<leader>Eo', '<cmd>:NvimTreeFocus<cr>', { desc = 'Open Directory Tree' })
map({ 'n', 'v' }, '<leader>Et', '<cmd>:NvimTreeToggle<cr>', { desc = 'Toggle Directory Tree' })
map({ 'n', 'v' }, '<leader>Ec', '<cmd>:NvimTreeClose<cr>', { desc = 'Close Directory Tree' })

-- telescope
map({ 'n', 'v' }, '<leader> ', '<cmd>Telescope find_files<cr>', { desc = 'Telescope Find files' })
map({ 'n', 'v' }, '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Telescope Live Grep' })
map({ 'n', 'v' }, '<leader>ff', '<cmd>Telescope builtin<cr>', { desc = 'Telescope Lists Pickers' })
map({ 'n', 'v' }, '<leader>fo', '<cmd>Telescope oldfiles<cr>', { desc = 'Telescope Old files' })
map({ 'n', 'v' }, '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Telescope Buffers' })

-- code
map({ 'n', 'v' }, 'gd', '<cmd>Telescope lsp_definitions<cr>', { desc = 'Goto Definition' })
map({ 'n', 'v' }, 'gr', '<cmd>Telescope lsp_references<cr>', { desc = 'References' })
map({ 'n', 'v' }, 'gI', '<cmd>Telescope lsp_implementations<cr>', { desc = 'Goto Implementation' })
map({ 'n', 'v' }, 'gy', '<cmd>Telescope lsp_type_definitions<cr>', { desc = 'Goto T[y]pe definitions' })
map({ 'n', 'v' }, '<leader>cf', function() require("conform").format({ lsp_fallback = true }) end, { desc = 'Format using conform' })
map({ 'n', 'v' }, '<leader>cr', '<cmd>:lua vim.lsp.buf.rename()<cr>', { desc = 'Rename' })
map({ 'n', 'v' }, '<leader>cd', function() vim.diagnostic.open_float(nil, { scope = "line" }) end, { desc = 'Line Diagnostics' })
map({ 'n', 'v' }, '<leader>ca', '<cmd>:lua vim.lsp.buf.code_action()<cr>', { desc = 'Code Action' })

-- undo tree
map("n", "<leader>u", '<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>', {desc = "Toggle Undo Tree"})

-- aerial nav
map({ 'n', 'v' }, '<leader>a', '<cmd>AerialOpen<cr>', { desc = 'Open AerialNav' })


-- From Primeagen
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")


-- greatest remap ever
map("x", "<leader>p", '"_dP', {desc = "Paste over void"})

map("n", "Q", "<nop>")
