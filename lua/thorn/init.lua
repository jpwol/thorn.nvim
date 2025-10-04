local config = require("thorn.config")

local M = {}

M.styles = {}

function M.load(opts)
  opts = config.extend(opts)
  local bg = vim.o.background
  local style_bg = opts.style == "light" and "light" or "dark"

  if bg ~= style_bg then
    if vim.g.colors_name == "thorn-" .. opts.style then
      opts.style = bg == "light" and (M.styles.light or "light") or (M.styles.dark or "dark")
    else
      vim.o.background = style_bg
    end
  end
  M.styles[vim.o.background] = opts.style
  return require("thorn.theme").setup(opts)
end

M.setup = config.setup

return M
