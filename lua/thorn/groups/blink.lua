local M = {}

function M.get(c, opts)

  -- stylua: ignore
  local ret = {
    BlinkCmpDoc                 = { fg = c.fg, bg         = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.lightgreen, bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.number },
    BlinkCmpKindCodeium         = { fg = c.cyan,   bg     = c.none },
    BlinkCmpKindCopilot         = { fg = c.cyan,   bg     = c.none },
    BlinkCmpKindDefault         = { fg = c.fg,     bg     = c.none },
    BlinkCmpKindSupermaven      = { fg = c.cyan,   bg     = c.none },
    BlinkCmpKindTabNine         = { fg = c.cyan,   bg     = c.none },
    BlinkCmpKind                = { fg = c.red },
    BlinkCmpLabel               = { fg = c.fg,     bg     = c.none },
    BlinkCmpLabelDetail         = { fg = c.green },
    BlinkCmpLabelDescription    = { fg = c.green },
    BlinkCmpLabelDeprecated     = { fg = c.number, bg     = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.cyan,   bg     = c.none, bold = true },
    BlinkCmpMenu                = { fg = c.green,  bg     = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.lightgreen, bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg,     bg     = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.green0, bg     = c.bg_float },
  }

  require("thorn.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
