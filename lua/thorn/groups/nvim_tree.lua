local M = {}

function M.get(c, opts)
-- stylua: ignore
  return {
    NvimTreeNormal       = { fg = c.gray, bg = c.bg_float },
    NvimTreeNormalNC     = { fg = c.gray, bg = c.bg_float},
    NvimTreeFolderIcon   = { bg = c.none, fg = c.green_3 },
    NvimTreeGitDeleted   = {  },
    NvimTreeGitDirty     = {  },
    NvimTreeGitNew       = {  },
    NvimTreeImageFile    = { fg = c.gray },
    NvimTreeIndentMarker = {  },
    NvimTreeOpenedFile   = { bg = c.cursorline },
    NvimTreeRootFolder   = { fg = c.green_3, bold = true },
    NvimTreeSpecialFile  = { fg = c.blue, underline = true },
    NvimTreeExecFile     = { fg = c.green_2 },
    NvimTreeSymlink      = { fg = c.gray },
    NvimTreeWinSeparator = { fg = c.separator },
  }
end

return M
