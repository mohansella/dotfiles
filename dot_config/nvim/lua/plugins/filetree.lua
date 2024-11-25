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
    opts = {
      sync_root_with_cwd = true,
      --respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        --update_root = true
      },
    },
    config = function(_,opts)
      require("nvim-tree").setup(opts)
    end
  },
  {
    'nvim-tree/nvim-web-devicons'
  },
  {
    'ahmedkhalf/project.nvim',
    config = function(_,opts)
      require("project_nvim").setup(opts)
      require('telescope').load_extension('projects')
    end
  }
}

return M
