local M = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "lua", "dart" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      playground = {
        enable = true,
      }
    },
    config = function(_,opts)
      require('nvim-treesitter.configs').setup(opts)
    end
  },
  "nvim-treesitter/playground"
}

return M
