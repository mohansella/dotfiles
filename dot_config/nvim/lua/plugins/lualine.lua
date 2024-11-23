local M = {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      globalstatus = true
    }
  },
  config = function(_, opts)
    require('lualine').setup(opts)
  end
}

return M
