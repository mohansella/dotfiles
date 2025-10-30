local M = {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
  },
}

return M
