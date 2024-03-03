return {
  {
    "folke/which-key.nvim",
    config = function()
      local status_ok, which_key = pcall(require, "which-key")
      if not status_ok then
        return
      end
      local setup = {
        icons = {
          breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
          separator = "  ", -- symbol used between a key and it's label
          group = "+", -- symbol prepended to a group
        },

        popup_mappings = {
          scroll_down = "<c-d>", -- binding to scroll down inside the popup
          scroll_up = "<c-u>", -- binding to scroll up inside the popup
        },

        window = {
          -- border = "none", -- none/single/double/shadow
          border = "rounded", -- none, single, double, shadow
          -- border = "none", -- none, single, double, shadow
          position = "bottom", -- bottom, top
          margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
          padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
          winblend = 0,
        },

        layout = {
          spacing = 6, -- spacing between columns
        },

        hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },

        triggers_blacklist = {
          -- list of mode / prefixes that should never be hooked by WhichKey
          i = { "j", "k" },
          v = { "j", "k" },
        },
      }
      which_key.setup(setup)
    end,
  },
}
