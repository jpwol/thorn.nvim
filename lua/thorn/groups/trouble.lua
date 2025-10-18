local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    TroubleText   = { fg = c.red },
    TroubleCount  = { fg = c.bg_float, bg = c.bg_visual },
    TroubleNormal = { fg = c.fg, bg = c.bg },
    TroubleDiagnosticsPos = { fg = c.green },
    TroubleNormalNC = { fg = c.fg, bg = c.bg },
  }
end

return M
