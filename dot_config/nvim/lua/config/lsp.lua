require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").dartls.setup {}
