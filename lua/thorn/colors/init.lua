local Util = require("thorn.util")

local M = {}

M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("thorn.colors." .. style))
  end,
})

function M.setup(opts)
  opts = require("thorn.config").extend(opts)

  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts)
  end

  local colors = palette

  return colors, opts
end

return M
