local M = {
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = false,
    },
    config = function(_, opts)
      require("oil").setup(opts)
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    config = function(_,opts)
      require("nvim-tree").setup(opts)
    end
  },
  {
    'nvim-tree/nvim-web-devicons'
  },
}

return M
