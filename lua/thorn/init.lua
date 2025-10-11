local M = {}

M.default = {
	style = "dark",

	italic_keywords = true,

	italic_comments = true,

	italic_strings = true,

	diagnostic_text_highlight = true,

	on_highlights = function(hl, palette) end,
}

M.setup = function(opts)
	M.config = vim.tbl_deep_extend("keep", opts or {}, M.default)
end

M.load = function()
	require("thorn.highlights").generate_highlights(M.config)
end

return M
