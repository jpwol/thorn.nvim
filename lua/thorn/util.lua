local M = {}

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h:h")

function M.mod(modname)
  if package.loaded[modname] then
    return package.loaded[modname]
  end
  local ret = loadfile(me .. "/" .. modname:gsub("%.", "/") .. ".lua")()
  package.loaded[modname] = ret
  return ret
end

return M
