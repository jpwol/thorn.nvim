local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = c.lightgreen, bg = c.bg_float },
    TelescopeTitle          = { fg = c.lightgreen },
    TelescopeNormal         = { fg = c.fg, bg = c.bg_float },
    TelescopePromptBorder   = { fg = c.red, bg = c.bg_float },
    TelescopePromptTitle    = { fg = c.red, bg = c.bg_float },
    TelescopeResultsComment = { fg = c.separator },
    TelescopeMatching       = { fg = c.cyan, bg = c.none, bold = true}
  }
end

return M
