local M = {}

function M.get(c, opts)

  -- stylua: ignore
  local ret = {
    BlinkCmpDoc                 = { fg = c.fg, bg         = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.green_3, bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.number },
    BlinkCmpKindCodeium         = { fg = c.green_2,   bg     = c.none },
    BlinkCmpKindCopilot         = { fg = c.green_2,   bg     = c.none },
    BlinkCmpKindDefault         = { fg = c.fg,     bg     = c.none },
    BlinkCmpKindSupermaven      = { fg = c.green_2,   bg     = c.none },
    BlinkCmpKindTabNine         = { fg = c.green_2,   bg     = c.none },
    BlinkCmpKind                = { fg = c.red },
    BlinkCmpLabel               = { fg = c.fg,     bg     = c.none },
    BlinkCmpLabelDetail         = { fg = c.green_5 },
    BlinkCmpLabelDescription    = { fg = c.green_5 },
    BlinkCmpLabelDeprecated     = { fg = c.number, bg     = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.green_2,   bg     = c.none, bold = true },
    BlinkCmpMenu                = { fg = c.green_5,  bg     = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.green_3, bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg,     bg     = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.green_4 , bg     = c.bg_float },
  }

  require("thorn.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
