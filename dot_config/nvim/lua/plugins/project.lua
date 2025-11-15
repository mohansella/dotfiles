local M = {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    opts = {
    },
  } }

return M
