local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.green_3 },
  }
end

return M
