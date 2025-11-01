local M = {
  {
    'nvim-flutter/flutter-tools.nvim',
    opts = {
      lsp = {
        on_attach = function(_, bufnr)
          local map = vim.keymap.set
          map("n", "<leader>lr", ":FlutterRun<CR>",
            { desc = "Flutter Run", buffer = bufnr, silent = true, noremap = true })
          map("n", "<leader>lh", ":FlutterReload<CR>",
            { desc = "Flutter Hot Reload", buffer = bufnr, silent = true, noremap = true })
          map("n", "<leader>ls", ":FlutterRestart<CR>",
            { desc = "Flutter Restart", buffer = bufnr, silent = true, noremap = true })
          map("n", "<leader>lo", ":FlutterLogToggle<CR>",
            { desc = "Flutter Toggle Output", buffer = bufnr, silent = true, noremap = true })
          map("n", "<leader>ll", ":Telescope flutter commands<CR>",
            { desc = "Flutter commands", buffer = bufnr, silent = true, noremap = true })
        end
      }
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    -- setup config to quit spawned flutter process
    config = function(_, opts)
      require("flutter-tools").setup(opts)
      vim.api.nvim_create_autocmd("VimLeavePre", {
        callback = function()
          pcall(vim.cmd, "FlutterQuit")
        end,
      })
      require("telescope").load_extension("flutter")
    end
  }
}
return M
