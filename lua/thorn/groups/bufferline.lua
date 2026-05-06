local M = {}

---@param c thorn.Palette
---@param opts thorn.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.green_3 },
  }
end

return M
