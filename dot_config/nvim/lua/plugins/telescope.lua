local M = {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-ui-select.nvim',
            'folke/noice.nvim',
        },
        config = function(_, opts)
            local ts = require('telescope')
            ts.setup(opts)
            ts.load_extension("ui-select")
            ts.load_extension("noice")
        end
    }
}

return M
