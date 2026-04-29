local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = c.green_5, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug   = { fg = c.green_5 },
    SnacksNotifierTitleDebug  = { fg = c.green_5 },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = c.red, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError   = { fg = c.red },
    SnacksNotifierTitleError  = { fg = c.red },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = c.blue, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo    = { fg = c.blue },
    SnacksNotifierTitleInfo   = { fg = c.blue },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = c.blue, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace   = { fg = c.blue },
    SnacksNotifierTitleTrace  = { fg = c.blue },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = c.yellow, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn    = { fg = c.yellow },
    SnacksNotifierTitleWarn   = { fg = c.yellow },

    SnacksDashboardDesc       = { fg = c.green_3 },
    SnacksDashboardFooter     = { fg = c.green_2, bold = true },
    SnacksDashboardHeader     = { fg = c.green_2 },
    SnacksDashboardIcon       = { fg = c.green_4 },
    SnacksDashboardKey        = { fg = c.yellow },
    SnacksDashboardSpecial    = { fg = c.red },
    SnacksDashboardDir        = { fg = c.separator },

    SnacksProfilerIconInfo    = { bg = c.bg_visual, fg = c.green_3 },
    SnacksProfilerBadgeInfo   = { bg = c.cursorline, fg = c.green_3 },
    SnacksFooterKey          = "SnacksProfilerIconInfo",
    SnacksFooterDesc         = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace   = { bg = c.green_3, fg = c.bg_float },
    SnacksProfilerBadgeTrace  = { bg = c.green_3, fg = c.bg_float },
    SnacksIndent              = { fg = c.number, nocombine = true },
    SnacksIndentScope         = { fg = c.green_0, nocombine = true },
    SnacksZenIcon             = { fg = c.red },
    SnacksInputIcon           = { fg = c.red },
    SnacksInputBorder         = { fg = c.yellow },
    SnacksInputTitle          = { fg = c.yellow },

    SnacksPickerInputBorder   = { fg = c.green_3, bg = c.bg_float },
    SnacksPickerInputTitle         = { fg = c.green_2, bg = c.bg_float, bold = true },
    SnacksPickerBoxTitle         = { fg = c.green_2, bg = c.bg_float },
    SnacksPickerSelected    = { fg = c.blue },
    SnacksPickerToggle         = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent   = { fg = c.fg, bg = c.blue, bold = true },
    SnacksPickerPickWin   = { fg = c.fg, bg = c.red, bold = true },
  }
end

return M
