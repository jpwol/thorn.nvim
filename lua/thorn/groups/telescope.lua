local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = c.red, bg = c.blue },
    TelescopeNormal         = { fg = c.red, bg = c.red },
    TelescopePromptBorder   = { fg = c.red, bg = c.red },
    TelescopePromptTitle    = { fg = c.red, bg = c.red },
    TelescopeResultsComment = { fg = c.dark3 },
  }
end

return M
