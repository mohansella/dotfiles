local M = {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-ui-select.nvim',
            'ahmedkhalf/project.nvim',
            'folke/noice.nvim',
        },
        opts = {
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {
                        -- even more opts
                    }
                }
            }
        },
        config = function(_, opts)
            local ts = require('telescope')
            ts.setup(opts)
            ts.load_extension("ui-select")
            ts.load_extension("projects")
            ts.load_extension("noice")
        end
    }
}

return M
