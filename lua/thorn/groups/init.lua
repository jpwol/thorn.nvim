-- local Util = require("thorn.util")

local M = {}

-- stylua: ignore
M.plugins = {
  lazy             = true,
  cmp              = true,
  nvim_tree        = true,
  render_markdown  = false,
  telescope        = true,
  trouble          = true,
  gitsigns         = true,
  bufferline       = true,
  snacks           = true,
}

function M.get(name, colors, opts)
  local mod = require("thorn.groups." .. name)
  return mod.get(colors, opts)
end

function M.setup(colors, opts)
  local groups = {
    base = true,
    kinds = true,
    semantic_tokens = true,
    treesitter = true,
  }

  for group, bool in pairs(M.plugins) do
    if bool then
      groups[group] = true
    end
  end

  local names = vim.tbl_keys(groups)
  table.sort(names)

  local ret = {}
  for group in pairs(groups) do
    for k, v in pairs(M.get(group, colors, opts)) do
      ret[k] = v
    end
  end

  opts.on_highlights(ret, colors)

  return ret
end

return M
