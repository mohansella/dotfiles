-- mason:lsp config
require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true
})

vim.lsp.enable({"dartls"})

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
