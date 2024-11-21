require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Useful redundance
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Window/Tmux navigation
map({"n","v","i"}, "<c-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Navigate left Window/Tmux" })
map({"n","v","i"}, "<c-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Navigate down Window/Tmux" })
map({"n","v","i"},  "<c-k>", "<cmd>TmuxNavigateUp<cr>" , { desc = "Navigate up Window/Tmux" })
map({"n","v","i"},  "<c-l>", "<cmd>TmuxNavigateRight<cr>" , { desc = "Navigate right Window/Tmux" })

-- Save and Close
map({"n","v","i"},  "<c-s>", "<cmd>w<cr>" , { desc = "Save Current buffer" })
map({"n","v","i"},  "<c-S>", "<cmd>wa<cr>" , { desc = "Save All buffer" })
map("n",  "<leader>q", "<cmd>wqa<cr>" , { desc = "Save and Close All buffer" })
