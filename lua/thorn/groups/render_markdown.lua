local M = {}

function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    RenderMarkdownBullet    = {fg = c.orange},
    RenderMarkdownCode      = { bg = c.bg_float },
    RenderMarkdownDash      = {fg = c.orange },
    RenderMarkdownTableHead = { fg = c.red },
    RenderMarkdownTableRow  = { fg = c.lightgreen },
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  }
  for i, cl in ipairs(c.hbg) do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = cl, fg = "", italic = true }
  end
  for i, cl in ipairs(c.hfg) do
    ret["RenderMarkdownH" .. i .. "Bg"].fg = cl
    ret["RenderMarkdownH" .. i] = { fg = cl }
  end
  return ret
end

return M
