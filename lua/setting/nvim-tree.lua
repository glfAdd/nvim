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
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- 禁用 vim 内置的文件浏览器插件 Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- 启用终端的真彩色支持
vim.opt.termguicolors = true