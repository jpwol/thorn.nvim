local M = {}

---@param c thorn.Palette
---@param opts thorn.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    GitSignsAdd          = { fg = c.git.add },
    GitSignsChange       = { fg = c.git.change },
    GitSignsDelete       = { fg = c.git.delete },
 }
end

return M
