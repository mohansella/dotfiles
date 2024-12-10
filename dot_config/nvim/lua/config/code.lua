-- mason:lsp config
require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true
})
local lspconfig = require("lspconfig")

-- Set up lspconfig.
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.lua_ls.setup {capabilities = capabilities} -- lua
lspconfig.dartls.setup {capabilities = capabilities} -- dart
lspconfig.clangd.setup {capabilities = capabilities} -- c, cpp
lspconfig.ts_ls.setup {capabilities = capabilities} -- javascript

-- treesitter config
require('nvim-treesitter.configs').setup({
  --Supported languages: https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
  ensure_installed = { "lua", "dart", "c", "cpp", "javascript" },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = false },
  playground = {
    enable = true,
  }
})
