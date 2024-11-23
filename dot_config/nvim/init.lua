-- personal: vim options
require("config.options")

-- lazy load plugins
require("config.lazy")

-- personal: after lazy, setup keymaps on nvim and plugins
require("config.keymaps")

-- personal: setup code
require("config.lsp")
require("config.treesitter")
