local M = {}
M.version = "1.0.0"

-- stylua: ignore
M.default = {
  theme = nil, -- light or dark
  background = "warm",

  styles = {
    keywords = { italics = true, bold = false },
    comments = { italics = true, bold = false },
    strings  = { italics = true, bold = false },

    diagnostic = {
      underline = true, -- if true, flat underlines will be used. Otherwise, undercurls will be used

      -- true will apply the bg highlight, false applies the fg highlight
      error = { highlight = true, },
      hint  = { highlight = false, },
      info  = { highlight = false, },
      warn  = { highlight = false, },
    },
  },

  transparent = false, -- transparent background

  on_highlights = function(hl, palette) end, -- apply your own highlights
}

M.config = M.default

M.setup = function(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

M.load = function()
  local bg = vim.o.background
  local theme = M.config.theme

  if bg ~= theme then
    if vim.g.colors_name == "thorn" then
      M.config.theme = bg
    else
      if theme == nil then
        M.config.theme = bg
      else
        vim.o.background = theme
        M.config.theme = theme
      end
    end
  end

  require("thorn.highlights").set_highlights(M.config)
end

return M
