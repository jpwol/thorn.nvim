local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.cyan },
    LazyProgressTodo = { bold = true, fg = c.green },
  }
end

return M
