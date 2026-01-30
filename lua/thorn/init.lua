local M = {}
M.version = "2.1.3" -- x-release-please-version

-- stylua: ignore
M.default = {
  theme = vim.o.background, -- 'light' or 'dark' - defaults to vim.o.background if unset
  background = "warm", -- options are 'warm' and 'cold'

  transparent = false, -- transparent background
  terminal = true, -- terminal colors

  styles = {
    keywords = { italic = true, bold = false },
    comments = { italic = true, bold = false },
    strings  = { italic = true, bold = false },

    diagnostic = {
      underline = true, -- if true, flat underlines will be used. Otherwise, undercurls will be used

      -- true will apply the bg highlight, false applies the fg highlight
      error = { highlight = true, },
      hint  = { highlight = false, },
      info  = { highlight = false, },
      warn  = { highlight = false, },
    },
  },

  on_highlights = function(hl, palette) end, -- apply your own highlights
}

M.config = nil

M.setup = function(opts)
  M.config = vim.tbl_deep_extend("force", {}, M.default, opts or {})
end

M.load = function(opts)
  opts = opts and vim.tbl_deep_extend("force", {}, M.config, opts or {}) or M.config
  local bg = vim.o.background
  local theme = opts.theme

  if bg ~= theme then
    if vim.g.colors_name == "thorn-" .. opts.theme .. "-" .. opts.background then
      opts.theme = bg
    else
      vim.o.background = theme
    end
  end

  require("thorn.highlights").set_highlights(opts)
end

setmetatable(M, {
  __index = function(_, k)
    if k == "config" then
      return M.default
    end
  end,
})

return M
