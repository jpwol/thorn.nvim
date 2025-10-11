local M = {}

function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.fg, bg = c.bg },
    CmpDocumentationBorder = { fg = c.red, bg = c.red },
    CmpGhostText           = { fg = c.red },
    CmpItemAbbr            = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.green, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.cyan, bg = c.none, bold = true },
    CmpItemAbbrMatchFuzzy  = { fg = c.cyan, bg = c.none, bold = true },
    CmpItemKindCodeium     = { fg = c.cyan, bg = c.none },
    CmpItemKindCopilot     = { fg = c.cyan, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.cyan, bg = c.none },
    CmpItemKindDefault     = { fg = c.fg, bg = c.none },
    CmpItemKindTabNine     = { fg = c.teal, bg = c.none },
    CmpItemMenu            = { fg = c.green, bg = c.none },
  }

	require("thorn.groups.kinds").kinds(ret, "CmpItemKind%s")
	return ret
end

return M
