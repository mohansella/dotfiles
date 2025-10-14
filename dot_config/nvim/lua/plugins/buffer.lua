local M = {
  {
    "leath-dub/snipe.nvim",
    keys = {
      { ",", function() require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu" }
    },
    opts = {
      ui = {
        position = "cursor",
        open_win_override = {
          border = "rounded"
        },
        preselect_current = true,
        text_align = "file-first",
        persist_tags = false
      },
      navigate = {
        under_cursor = " ",
        cancel_snipe = "q"
      },
      sort = "last"
    }
  }
}

return M
