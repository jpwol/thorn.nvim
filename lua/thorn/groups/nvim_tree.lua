local M = {}

function M.get(c, opts)
-- stylua: ignore
  return {
    NvimTreeNormal       = { fg = c.gray, bg = c.bg_float },
    NvimTreeNormalNC     = { fg = c.gray, bg = c.bg_float},
    NvimTreeFolderIcon   = { bg = c.none, fg = c.lightblue },
    NvimTreeGitDeleted   = {  },
    NvimTreeGitDirty     = {  },
    NvimTreeGitNew       = {  },
    NvimTreeImageFile    = { fg = c.gray },
    NvimTreeIndentMarker = {  },
    NvimTreeOpenedFile   = { bg = c.cursorline },
    NvimTreeRootFolder   = { fg = c.lightgreen, bold = true },
    NvimTreeSpecialFile  = { fg = c.pink, underline = true },
    NvimTreeExecFile     = { fg = c.cyan },
    NvimTreeSymlink      = { fg = c.gray },
    NvimTreeWinSeparator = { fg = c.separator },
  }
end

return M
