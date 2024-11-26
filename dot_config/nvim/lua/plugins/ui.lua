local M = {
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin")
      vim.cmd("colorscheme catppuccin")
    end
  },
  {
    'rcarriga/nvim-notify',
    config = function(_, opts)
      require('notify').setup(opts)
    end
  },
  {
    "folke/noice.nvim",
    config = function(_, opts)
      require('noice').setup(opts)
      require("telescope").load_extension("noice")
    end
  }
}


return M
