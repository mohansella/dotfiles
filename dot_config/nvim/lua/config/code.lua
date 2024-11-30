-- mason:lsp config
require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true
})
local lspconfig = require("lspconfig")

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.lua_ls.setup {capabilities = capabilities}
lspconfig.dartls.setup {capabilities = capabilities}

-- treesitter config
require('nvim-treesitter.configs').setup({
  ensure_installed = { "lua", "dart" },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = false },
  playground = {
    enable = true,
  }
})
