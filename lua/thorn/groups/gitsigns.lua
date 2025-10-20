local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    GitSignsAdd          = { fg = c.git.add },
    GitSignsChange       = { fg = c.git.change },
    GitSignsDelete       = { fg = c.git.delete },
 }
end

return M
