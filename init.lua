require("pkerty.core")
require("pkerty.lazy")

-- Set up theme
vim.cmd([[colorscheme default]])
vim.o.background = "dark"

-- Define colors
local colors = {
	bg = "#121212",
	fg = "#f8f8f2",
	cyan = "#8be9fd",
	green = "#50fa7b",
	orange = "#ffb86c",
	pink = "#ff79c6",
	purple = "#bd93f9",
	red = "#ff5555",
	yellow = "#f1fa8c",
}

-- Apply colors
local function apply_colors()
	vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
	vim.api.nvim_set_hl(0, "Comment", { fg = colors.teal, italic = true })
	vim.api.nvim_set_hl(0, "Constant", { fg = colors.purple })
	vim.api.nvim_set_hl(0, "String", { fg = colors.yellow })
	vim.api.nvim_set_hl(0, "Identifier", { fg = colors.blue })
	vim.api.nvim_set_hl(0, "Function", { fg = colors.green })
	vim.api.nvim_set_hl(0, "Statement", { fg = colors.orange, bold = true })
	vim.api.nvim_set_hl(0, "PreProc", { fg = colors.red })
	vim.api.nvim_set_hl(0, "Type", { fg = colors.blue })
	vim.api.nvim_set_hl(0, "Special", { fg = colors.purple, bold = true })
	vim.api.nvim_set_hl(0, "Error", { fg = colors.red })
end

apply_colors()

vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
