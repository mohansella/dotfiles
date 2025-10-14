local m = {
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
    dependencies = {
      'rcarriga/nvim-notify',
    },
    config = function(_, opts)
      require('noice').setup(opts)
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function(_, opts)
      require('gitsigns').setup(opts)
    end
  },
  {
    --smooth scrolling
    "declancm/cinnamon.nvim",
    opts = {
      keymaps = {
        basic = true,
        extra = true,
      },
      options = {
        max_delta = {
          time = 100
        }
      }
    },
    config = function(_, opts)
      require("cinnamon").setup(opts)
    end
  }
}


return m
