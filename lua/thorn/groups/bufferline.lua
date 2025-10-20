local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.git.change }
  }
end

return M
