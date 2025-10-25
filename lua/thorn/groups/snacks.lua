local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = c.green, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug   = { fg = c.green },
    SnacksNotifierTitleDebug  = { fg = c.green },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = c.red0, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError   = { fg = c.red0 },
    SnacksNotifierTitleError  = { fg = c.red0 },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = c.blue, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo    = { fg = c.blue },
    SnacksNotifierTitleInfo   = { fg = c.blue },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = c.pink, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace   = { fg = c.pink },
    SnacksNotifierTitleTrace  = { fg = c.pink },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = c.yellow0, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn    = { fg = c.yellow0 },
    SnacksNotifierTitleWarn   = { fg = c.yellow0 },

    SnacksDashboardDesc       = { fg = c.lightgreen },
    SnacksDashboardFooter     = { fg = c.cyan, bold = true },
    SnacksDashboardHeader     = { fg = c.cyan },
    SnacksDashboardIcon       = { fg = c.green0 },
    SnacksDashboardKey        = { fg = c.yellow },
    SnacksDashboardSpecial    = { fg = c.red1 },
    SnacksDashboardDir        = { fg = c.separator },

    SnacksProfilerIconInfo    = { bg = c.bg_visual, fg = c.lightgreen },
    SnacksProfilerBadgeInfo   = { bg = c.cursorline, fg = c.lightgreen },
    SnacksFooterKey          = "SnacksProfilerIconInfo",
    SnacksFooterDesc         = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace   = { bg = c.lightgreen, fg = c.bg_float },
    SnacksProfilerBadgeTrace  = { bg = c.lightgreen, fg = c.bg_float },
    SnacksIndent              = { fg = c.number, nocombine = true },
    SnacksIndentScope         = { fg = c.cyan0, nocombine = true },
    SnacksZenIcon             = { fg = c.red },
    SnacksInputIcon           = { fg = c.red },
    SnacksInputBorder         = { fg = c.yellow },
    SnacksInputTitle          = { fg = c.yellow },

    SnacksPickerInputBorder   = { fg = c.lightgreen, bg = c.bg_float },
    SnacksPickerInputTitle         = { fg = c.cyan0, bg = c.bg_float, bold = true },
    SnacksPickerBoxTitle         = { fg = c.cyan0, bg = c.bg_float },
    SnacksPickerSelected    = { fg = c.pink },
    SnacksPickerToggle         = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent   = { fg = c.fg, bg = c.pink, bold = true },
    SnacksPickerPickWin   = { fg = c.fg, bg = c.red, bold = true },
  }
end

return M
