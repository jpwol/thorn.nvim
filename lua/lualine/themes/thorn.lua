local colors = require("thorn.colors")

return {
	normal = {
		a = { bg = colors.lightgreen, fg = colors.bg, gui = "bold" },
		b = { bg = colors.cursorline, fg = colors.lightgreen },
		c = { bg = colors.statusbar, fg = colors.gray },
	},
	insert = {
		a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
		b = { bg = colors.cursorline, fg = colors.orange },
	},
	visual = {
		a = { bg = colors.pink, fg = colors.bg, gui = "bold" },
		b = { bg = colors.cursorline, fg = colors.pink },
	},
	replace = {
		a = { bg = colors.red, fg = colors.bg, gui = "bold" },
		b = { bg = colors.cursorline, fg = colors.red },
	},
	command = {
		a = { bg = colors.red, fg = colors.bg, gui = "bold" },
		b = { bg = colors.cursorline, fg = colors.red },
	},
	inactive = {
		a = { bg = colors.bg, fg = colors.gray },
		b = { bg = colors.bg, fg = colors.gray },
		c = { bg = colors.bg, fg = colors.gray },
	},
}
