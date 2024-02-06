----vim.g.rnvimr_hide_gitignore = 1 -- 隐藏gitignore中的文件
vim.g.rnvimr_border_attr = { fg = 14, bg = -1 } -- 改变边框颜色
-- 允许在 rnvimr 中使用一些 Neovim 快捷键
vim.g.rnvimr_enable_ex = 1
vim.g.rnvimr_enable_bw = 1
vim.g.rnvimr_enable_picker = 1

-- Rnvimr 布局配置
vim.g.rnvimr_layout = {
    relative = 'win',
    width = math.floor(vim.fn.winwidth(0) * 1.00), -- 60% of the current window width
    height = math.floor(vim.fn.winheight(0) * 1.00), -- 80% of the current window height
    col = math.floor((vim.fn.winwidth(0) - vim.fn.winwidth(0) * 1.00) / 2),
    row = math.floor((vim.fn.winheight(0) - vim.fn.winheight(0) * 1.00) / 2),
    border = {
        { '╭', 'FloatBorder' },
        { '─', 'FloatBorder' },
        { '╮', 'FloatBorder' },
        { '│', 'FloatBorder' },
        { '╯', 'FloatBorder' },
        { '─', 'FloatBorder' },
        { '╰', 'FloatBorder' },
        { '│', 'FloatBorder' },
    },
    style = 'minimal', -- 这种样式没有行号
}

vim.g.rnvimr_presets = {
    {
        width = math.floor(vim.fn.winwidth(0) * 1.00), -- 60% of the current window width
        height = math.floor(vim.fn.winheight(0) * 1.00), -- 80% of the current window height
        col = math.floor((vim.fn.winwidth(0) - vim.fn.winwidth(0) * 1.00) / 2),
        row = math.floor((vim.fn.winheight(0) - vim.fn.winheight(0) * 1.00) / 2),
    }, {
        width = math.floor(vim.fn.winwidth(0) * 0.75),
        height = math.floor(vim.fn.winheight(0) * 0.75),
        col = math.floor((vim.fn.winwidth(0) - vim.fn.winwidth(0) * 0.75) / 2),
        row = math.floor((vim.fn.winheight(0) - vim.fn.winheight(0) * 0.75) / 2),
    }, {
        width = math.floor(vim.fn.winwidth(0) * 0.5),
        height = math.floor(vim.fn.winheight(0) * 0.5),
        col = math.floor((vim.fn.winwidth(0) - vim.fn.winwidth(0) * 0.5) / 2),
        row = math.floor((vim.fn.winheight(0) - vim.fn.winheight(0) * 0.5) / 2),
    },
}


