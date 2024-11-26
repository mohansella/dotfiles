-- mason:lsp config
require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true
})
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {}
lspconfig.dartls.setup {}

-- treesitter config
require('nvim-treesitter.configs').setup({
  ensure_installed = { "lua", "dart" },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
  playground = {
    enable = true,
  }
})
