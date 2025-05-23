local M = {
  { "mason-org/mason.nvim" },
  { "mason-org/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  {
    'stevearc/conform.nvim',
    opts = {},
  },
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  }
}

return M
