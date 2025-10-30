-- mason:lsp config
require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true
})

-- manually enable dartls where from mason not needed
vim.lsp.enable({"dartls"})

-- treesitter config
require('nvim-treesitter.configs').setup({
  ensure_installed = { "lua", "dart", "c", "cpp", "javascript" },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = false },
  playground = {
    enable = true,
  }
})
