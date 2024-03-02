return {
  {
    "linrongbin16/lsp-progress.nvim",
    enabled = true,
    branch = "main",
    event = { "BufRead" },
    config = function()
      require("lsp-progress").setup({
        client_format = function(client_name, spinner, series_messages)
          return #series_messages > 0
              and (spinner .. " " .. string.sub(table.concat(series_messages, ", "), 1, 25) .. " ...")
            or nil
        end,
        format = function(client_messages)
          local sign = ""
          return #client_messages > 0
              and (sign .. " " .. string.sub(table.concat(client_messages, " "), 1, 25) .. " ...")
            or sign
        end,
      })
    end,
  },
}
