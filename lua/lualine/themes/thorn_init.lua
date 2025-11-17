local M = {}

function M.get(style)
  local colors = require("thorn.colors").setup(style)

  return {
    normal = {
      a = { bg = colors.lightgreen, fg = colors.bg, gui = "bold" },
      b = { bg = colors.status_sep, fg = colors.lightgreen },
      c = { bg = colors.statusbar, fg = colors.gray },
    },
    insert = {
      a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
      b = { bg = colors.status_sep, fg = colors.orange },
    },
    visual = {
      a = { bg = colors.pink, fg = colors.bg, gui = "bold" },
      b = { bg = colors.status_sep, fg = colors.pink },
    },
    replace = {
      a = { bg = colors.red, fg = colors.bg, gui = "bold" },
      b = { bg = colors.status_sep, fg = colors.red },
    },
    command = {
      a = { bg = colors.red, fg = colors.bg, gui = "bold" },
      b = { bg = colors.status_sep, fg = colors.red },
    },
    inactive = {
      a = { bg = colors.bg, fg = colors.gray },
      b = { bg = colors.bg, fg = colors.gray },
      c = { bg = colors.bg, fg = colors.gray },
    },
  }
end

return M
