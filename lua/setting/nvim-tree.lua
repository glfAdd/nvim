--[[
快捷键
  o 打开关闭文件夹
  a 创建文件
  r 重命名
  x 剪切
  c 拷贝
  p 粘贴
  d 删除

]]--
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 45,
        side = "left", -- left right
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    actions = {
        open_file = {
            -- 首次打开大小适配
            resize_window = true,
            -- 打开文件时关闭
            quit_on_open = true,
        },
    }
})

-- 禁用 vim 内置的文件浏览器插件 Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true -- 启用终端的真彩色支持