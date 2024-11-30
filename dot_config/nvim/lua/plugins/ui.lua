local M = {
  {
    "catppuccin/nvim",
    priority = 1000,
    opts = {
      mason = true,
      noice = true,
      notify = true,
      which_key = true
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
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
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function(_,opts)
      require('gitsigns').setup(opts)
    end
  }
}


return M
