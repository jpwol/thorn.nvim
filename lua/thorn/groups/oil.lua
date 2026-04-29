local M = {}

---@param c thorn.Palette
---@param opts thorn.StyleOpts
function M.get(c, opts)
  return {
    OilLink = { fg = c.green_2 },

    -- oil-git
    OilGitAdded = { fg = c.git.add },
    OilGitUntracked = { fg = c.git.change },
    OilGitModifiedUnstaged = { fg = c.yellow },
    OilGitModifiedStaged = { fg = c.git.add },
    OilGitRenamed = { fg = c.blue },
    OilGitCopied = { fg = c.blue },
    OilGitDeleted = { fg = c.red },
    OilGitIgnored = "Comment",
  }
end

return M
