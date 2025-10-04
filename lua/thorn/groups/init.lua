local Util = require("thorn.util")

local M = {}

-- stylua: ignore
M.plugins = {
  -- ["fzf-lua"]                       = "fzf",
  -- ["gitsigns.nvim"]                 = "gitsigns",
  -- ["lazy.nvim"]                     = "lazy",
  ["nvim-cmp"]                      = "cmp",
  -- ["nvim-dap"]                      = "dap",
  ["nvim-tree.lua"]                 = "nvim-tree",
  -- ["nvim-treesitter-context"]       = "treesitter-context",
  -- ["render-markdown.nvim"]          = "render-markdown",
  -- ["telescope.nvim"]                = "telescope",
  -- ["trouble.nvim"]                  = "trouble",
}

function M.get_group(name)
  return Util.mod("thorn.groups." .. name)
end

function M.get(name, colors, opts)
  local mod = M.get_group(name)
  return mod.get(colors, opts)
end

function M.setup(colors, opts)
  local groups = {
    base = true,
    kinds = true,
    semantic_tokens = true,
    treesitter = true,
  }

  if opts.plugins.all then
    for _, group in pairs(M.plugins) do
      groups[group] = true
    end
  elseif opts.plugins.auto and package.loaded.lazy then
    local plugins = require("lazy.core.config").plugins
    for plugin, group in pairs(M.plugins) do
      if plugins[plugin] then
        groups[group] = true
      end
    end
  end

  local names = vim.tbl_keys(groups)
  table.sort(names)

  local inputs = {
    colors = colors,
    plugins = names,
  }

  local ret = {}
  for group in pairs(groups) do
    for k, v in pairs(M.get(group, colors, opts)) do
      ret[k] = v
    end
  end

  return ret, groups
end

return M
