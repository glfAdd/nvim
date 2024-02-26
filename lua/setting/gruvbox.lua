--[[
fg - 前景色
bg - 背景色
bold - 加粗
italic - 斜体
--]]
require("gruvbox").setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})

vim.cmd("colorscheme gruvbox")
vim.opt.background = "dark" -- light dark

-- 设置 buffer 颜色
-- BufferLineTab: 未选中的标签的颜色，背景使用 #1E1E1E（黑色），前景使用 #FFFFFF（白色）。
-- BufferLineTabSelected: 选中的标签的颜色，背景使用 #282828（深灰色），前景使用 #FF0000（红色）。
-- BufferLineFill: 标签栏填充区域的颜色，背景使用 #1E1E1E（黑色）。
-- BufferLineBackground: 标签栏的背景颜色，背景使用 #1E1E1E（黑色）。
vim.cmd([[
  hi BufferLineTab guibg=#a8a8a8 guifg=#ff0000
  hi BufferLineTabSelected guibg=#00ff00 guifg=#ff0000
]])