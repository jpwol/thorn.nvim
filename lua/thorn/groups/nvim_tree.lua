local M = {}

function M.get(c, opts)
-- stylua: ignore
  return {
    NvimTreeFolderIcon   = { bg = c.none, fg = c.lightblue },
    NvimTreeGitDeleted   = {  },
    NvimTreeGitDirty     = {  },
    NvimTreeGitNew       = {  },
    NvimTreeImageFile    = { fg = c.gray },
    NvimTreeIndentMarker = {  },
    NvimTreeNormal       = { fg = c.gray },
    NvimTreeNormalNC     = { fg = c.gray },
    NvimTreeOpenedFile   = { bg = c.cursorline },
    NvimTreeRootFolder   = { fg = c.lightgreen, bold = true },
    NvimTreeSpecialFile  = { fg = c.pink, underline = true },
    NvimTreeExecFile     = { fg = c.cyan },
    NvimTreeSymlink      = { fg = c.gray },
    NvimTreeWinSeparator = { fg = c.separator },
  }
end

return M
