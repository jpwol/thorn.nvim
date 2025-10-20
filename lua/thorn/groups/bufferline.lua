local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.lightgreen },
  }
end

return M
