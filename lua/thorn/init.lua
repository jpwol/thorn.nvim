local M = {}

M.default = {
  style = nil,
  italic_keywords = true,
  italic_comments = true,
  italic_strings = true,
  diagnostic_text_highlight = true,
  transparent = false,

  on_highlights = function(hl, palette) end,
}

M.config = M.default

M.setup = function(opts)
  M.config = vim.tbl_extend("force", M.config, opts or {})
end

M.load = function()
  local bg = vim.o.background
  local style = M.config.style

  if bg ~= style then
    if vim.g.colors_name == "thorn" then
      M.config.style = bg
    else
      if style == nil then
        M.config.style = bg
      else
        vim.o.background = style
        M.config.style = style
      end
    end
  end

  require("thorn.highlights").set_highlights(M.config)
end

return M
