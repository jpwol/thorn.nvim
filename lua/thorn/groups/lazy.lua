local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.green_2 },
    LazyProgressTodo = { bold = true, fg = c.green_5 },
  }
end

return M
