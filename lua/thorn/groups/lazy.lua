local M = {}

---@param c thorn.Palette
---@param opts thorn.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.green_2 },
    LazyProgressTodo = { bold = true, fg = c.green_5 },
  }
end

return M
