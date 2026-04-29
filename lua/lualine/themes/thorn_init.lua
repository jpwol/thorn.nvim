local M = {}

function M.get(style)
  local colors = require("thorn.colors").setup(style)

  return {
    normal = {
      a = { bg = colors.statusbar.fg, fg = colors.bg, gui = "bold" },
      b = { bg = colors.statusbar.sep, fg = colors.statusbar.fg },
      c = { bg = colors.statusbar.bg, fg = colors.gray },
    },
    insert = {
      a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
      b = { bg = colors.statusbar.sep, fg = colors.orange },
    },
    visual = {
      a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
      b = { bg = colors.statusbar.sep, fg = colors.blue },
    },
    replace = {
      a = { bg = colors.red, fg = colors.bg, gui = "bold" },
      b = { bg = colors.statusbar.sep, fg = colors.red },
    },
    command = {
      a = { bg = colors.red, fg = colors.bg, gui = "bold" },
      b = { bg = colors.statusbar.sep, fg = colors.red },
    },
    inactive = {
      a = { bg = colors.bg, fg = colors.gray },
      b = { bg = colors.bg, fg = colors.gray },
      c = { bg = colors.bg, fg = colors.gray },
    },
  }
end

return M
