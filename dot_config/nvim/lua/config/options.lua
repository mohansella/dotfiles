-- 2 spaces for tab and indent
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

-- line number
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.wrap = false

-- file tree: disable netrw loading
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- backups
vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true

-- scroll
vim.o.scrolloff = 8
