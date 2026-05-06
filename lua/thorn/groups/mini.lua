local M = {}

---@param c thorn.Palette
---@param opts thorn.Config
function M.get(c, opts)
  return {
    -- mini.clue
    MiniClueNextKey = { fg = c.green_6 },
    MiniClueDescGroup = { fg = c.blue },
    MiniClueDescSingle = { fg = c.fg },

    -- mini.cmdline
    MiniCmdlinePeekSep = { bg = c.bg_float },

    -- mini.diff
    MiniDiffSignAdd = { fg = c.git.add },
    MiniDiffSignChange = { fg = c.git.change },
    MiniDiffSignDelete = { fg = c.git.delete },

    -- mini.files
    MiniFilesCursorLine = "PmenuSel",
    MiniFilesTitleFocused = { fg = c.blue },

    -- mini.icons
    MiniIconsAzure = { fg = c.blue },
    MiniIconsBlue = { fg = c.green_2 },
    MiniIconsCyan = { fg = c.green_6 },
    MiniIconsGreen = { fg = c.green_4 },
    MiniIconsGrey = { fg = c.gray },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsPurple = { fg = c.green_0 },
    MiniIconsRed = { fg = c.red },
    MiniIconsYellow = { fg = c.yellow },

    -- mini.map
    MiniMapNormal = { fg = c.gray, bg = c.bg_float },

    -- mini.pick
    MiniPickMatchCurrent = "PmenuSel",
    MiniPickMatchMarked = { bg = c.diff.add },
    MiniPickMatchRanges = "PmenuMatch",
    MiniPickPrompt = { fg = c.blue, bg = c.bg_float },
    MiniPickPromptPrefix = { fg = c.green_1, bg = c.bg_float },

    -- mini.starter
    MiniStarterFooter = "Comment",
    MiniStarterInactive = { fg = c.green_5 },
    MiniStarterSection = { fg = c.blue },
    MiniStarterItemPrefix = { fg = c.yellow },
    MiniStarterQuery = { fg = c.orange },

    -- mini.statusline
    MiniStatuslineModeNormal = { bg = c.statusbar.fg, fg = c.bg, bold = true },
    MiniStatuslineModeInsert = { bg = c.orange, fg = c.bg, bold = true },
    MiniStatuslineModeVisual = { bg = c.blue, fg = c.bg, bold = true },
    MiniStatuslineModeReplace = { bg = c.red, fg = c.bg, bold = true },
    MiniStatuslineModeCommand = { bg = c.yellow, fg = c.bg, bold = true },
    MiniStatuslineModeOther = { bg = c.orange, fg = c.bg, bold = true },
    MiniStatuslineDevInfo = { bg = c.statusbar.sep, fg = c.statusbar.fg },
    MiniStatuslineFileInfo = { bg = c.statusbar.sep, fg = c.statusbar.fg },
    MiniStatuslineFilename = { bg = c.statusbar.bg, fg = c.gray },
    MiniStatuslineInactive = { bg = c.statusbar.bg, fg = c.gray },

    -- mini.tabline
    MiniTablineFill = "TabLineFill",
    MiniTablineCurrent = { fg = c.fg, bg = c.statusbar.bg, bold = true },
    MiniTablineVisible = { fg = c.green_6, bg = c.statusbar.bg },
    MiniTablineHidden = { fg = c.green_5, bg = c.statusbar.bg },
    MiniTablineModifiedCurrent = { bg = c.fg, fg = c.statusbar.bg, bold = true },
    MiniTablineModifiedVisible = { bg = c.green_6, fg = c.statusbar.bg },
    MiniTablineModifiedHidden = { bg = c.green_5, fg = c.statusbar.bg },

    -- Mini Trailspace
    MiniTrailspace = { bg = c.red },
  }
end

return M
