require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true
})
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {}
lspconfig.dartls.setup {}
