local M = {
  {
  "catppuccin/nvim",
  config = function()
    require("catppuccin")
    vim.cmd("colorscheme catppuccin")
  end
  }
}


return M
