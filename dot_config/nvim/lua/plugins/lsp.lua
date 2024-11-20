require("lspconfig").dartls.setup({
  cmd = { "dart", "language-server", "--protocol=lsp" },
})

return {}
