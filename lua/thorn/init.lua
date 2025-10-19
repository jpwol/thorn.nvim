local M = {}

M.default = {
  italic_keywords = true,

  italic_comments = true,

  italic_strings = true,

  diagnostic_text_highlight = true,

  on_highlights = function(hl, palette) end,
}

M.config = M.default

M.setup = function(opts)
  M.config = vim.tbl_extend("keep", opts or {}, M.default)
end

M.load = function()
  local bg = vim.o.background
  local style_bg = M.config.style

  if bg ~= style_bg then
    if vim.g.colors_name == "thorn" then
      M.config.style = bg
    else
      if style_bg == nil then
        M.config.style = bg
      else
        M.config.style = style_bg
      end
    end
  end
  require("thorn.highlights").set_highlights(M.config)
end

return M
