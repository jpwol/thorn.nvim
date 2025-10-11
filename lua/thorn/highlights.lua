local M = {}

M.generate_highlights = function(opts)
	local colors = require("thorn.colors")
	local groups = require("thorn.groups").setup(colors, opts)

	if vim.g.colors_name then
		vim.cmd([[highlight clear]])
	end

	vim.g.colors_name = "thorn"
	vim.o.termguicolors = true

	for group, hl in pairs(groups) do
		hl = type(hl) == "string" and { link = hl } or hl
		vim.api.nvim_set_hl(0, group, hl)
	end
end

return M
