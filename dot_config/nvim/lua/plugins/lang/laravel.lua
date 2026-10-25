return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("laravel_lsp", {
        cmd = { "laravel-lsp" },
        filetypes = { "php", "blade" },
        root_markers = {
          "artisan",
          "composer.json",
        },
      })

      vim.lsp.enable("laravel_lsp")
    end,
  },
}
