local M = {}

---@param c thorn.Palette
---@param opts thorn.StyleOpts
function M.get(c, opts)
  return {
    OilLink = { fg = c.cyan },

    -- oil-git
    OilGitAdded = { fg = c.git.add },
    OilGitUntracked = { fg = c.git.change },
    OilGitModifiedUnstaged = { fg = c.yellow },
    OilGitModifiedStaged = { fg = c.git.add },
    OilGitRenamed = { fg = c.pink },
    OilGitCopied = { fg = c.pink },
    OilGitDeleted = { fg = c.git.delete },
    OilGitIgnored = "Comment",
  }
end

return M
