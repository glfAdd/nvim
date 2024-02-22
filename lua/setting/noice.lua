--[[
功能: 覆写了很多neovim原本UI的插件，很大幅度地提升了美观性
    1. 将messages重定向到notify
    2. 将搜索、命令显示为独立的命令框，并去除最底部的显示栏，节省空间。
    3. 显示过往Notifications
    4. Telescope整合

]]--
require('noice').setup({
    disable_default_keybindings = true, -- 禁用默认的键绑定
    autochdir = true, -- 进入文件夹时自动改变工作目录
    floating = {
        winblend = 0, -- 不透明度
        border = true, -- 显示边框
        width = 0.9, -- 宽度比例
        height = 0.9, -- 高度比例
        row = 0.5, -- 显示在屏幕上的行位置
        col = 0.5, -- 显示在屏幕上的列位置
        relative = 'editor', -- 相对位置（editor、win、cursor）
    },
    layout = {
        window = {
            width = 0.9, -- 窗口宽度比例
            height = 0.9, -- 窗口高度比例
            border = 'none', -- 窗口边框样式（none、single、double、shadow）
        },
        section = {
            height = 0.5, -- 每个部分的高度比例
        },
    },
    file_icons = true, -- 启用文件图标
    colors = {
        preview_bg = '#1E1E1E', -- 预览窗口背景颜色
        preview_border = '#282828', -- 预览窗口边框颜色
        prompt_bg = '#1E1E1E', -- 提示符背景颜色
        prompt_fg = '#EBDBB2', -- 提示符前景颜色
        statusline_bg = '#1E1E1E', -- 状态栏背景颜色
        statusline_fg = '#EBDBB2', -- 状态栏前景颜色
    },
    views = {
        -- cmdline 大小/位置/样式
        cmdline_popup = {
            position = {
                row = 0.3,
                col = 0.5,
            },
            size = {
                width = 0.8,
                height = "auto",
            },
            border = {
                style = "none",
                padding = { 1, 1 },
            },
            filter_options = {},
            win_options = {
                winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
            },
        },
    },
})
