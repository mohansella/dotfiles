-- tab space configuration
vim.opt.expandtab = true
vim.opt.tabstop = 4

vim.opt.smarttab = true
vim.opt.shiftwidth = 4

vim.opt.autoindent = true
vim.opt.smartindent = true

-- fold option
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 2

-- wrap
vim.opt.wrap = false

-- plugins
vim.opt.rtp:append('~/.config/nvim/which-key')
require('which-key').setup {
    delay = 500
}

local myterm = require('myterm')

-- flutter language server config
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'dart',
    callback = function(args)
        vim.lsp.start({
            name = "dart-ls",
            cmd = { "dart", "language-server", "--protocol=lsp" },
        })
    end
})
