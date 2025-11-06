local M = {}

M.set_highlights = function(opts)
  local colors = require("thorn.colors").setup(opts)
  local groups = require("thorn.groups").setup(colors, opts)

  if vim.g.colors_name then
    vim.cmd([[highlight clear]])
  end

  vim.g.colors_name = "thorn"
  vim.o.termguicolors = true

  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end

  if opts.terminal then
    M.terminal(colors)
  end
end

function M.terminal(colors)
  vim.g.terminal_color_0 = colors.terminal.black
  vim.g.terminal_color_8 = colors.terminal.black_bright

  vim.g.terminal_color_7 = colors.terminal.white
  vim.g.terminal_color_15 = colors.terminal.white_bright

  vim.g.terminal_color_1 = colors.terminal.red
  vim.g.terminal_color_9 = colors.terminal.red_bright

  vim.g.terminal_color_2 = colors.terminal.green
  vim.g.terminal_color_10 = colors.terminal.green_bright

  vim.g.terminal_color_3 = colors.terminal.yellow
  vim.g.terminal_color_11 = colors.terminal.yellow_bright

  vim.g.terminal_color_4 = colors.terminal.blue
  vim.g.terminal_color_12 = colors.terminal.blue_bright

  vim.g.terminal_color_5 = colors.terminal.magenta
  vim.g.terminal_color_13 = colors.terminal.magenta_bright

  vim.g.terminal_color_6 = colors.terminal.cyan
  vim.g.terminal_color_14 = colors.terminal.cyan_bright
end

return M
