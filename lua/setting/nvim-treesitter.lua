--[[
:TSUpdate
:TSInstallInfo
:TSBufToggle highlight
:TSInstall python


help c python java json yaml vim comment lua go make markdown LLVM
    :TSBufEnable {module}           当前 buffer
    :TSBufDisable {module}
    :TSEnable {module} [{ft}]       每个 buffer
    :TSDisable {module} [{ft}]
    :TSModuleInfo [{module}]        查看信息


代码格式化 { }
    zc  折叠代码
    zo  打开
--]]
require('nvim-treesitter.configs').setup({
    -- 默认安装的解析器
    ensure_installed = { 'lua', 'python', 'java', 'go'},
    -- 开启默认安装
    sync_install = false,
    -- 打开 buffer 时自动安装没有的解析器
    auto_install = true,
    -- 忽略安装的解析器
    ignore_install = {},
    -- 代码高亮
    highlight = {
        enable = true, -- 启用语法高亮
        disable = {}, -- 禁用特定语法
        additional_vim_regex_highlighting = false, -- 使用额外的 Vim 正则表达式高亮
    },
    -- 选中后按 = 格式化
    indent = {
        enable = true, -- 启用自动缩进
    },
    autotag = {
        enable = true, -- 启用自动补全 HTML/JSX 标签
    },
    textobjects = {
        select = {
            enable = true, -- 启用选择文本对象
            lookahead = true, -- 启用先行搜索以更智能地选择对象
        },
        swap = {
            enable = true, -- 启用交换文本对象
        },
        move = {
            enable = true, -- 启用移动文本对象
            set_jumps = true, -- 启用保存跳转位置
        },
    },
    -- 增量选择
    -- 选择一行后按 CR / BS / TAB 增加或减小选中的代码块
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            node_decremental = "<BS>",
            scope_incremental = "<TAB>",
        },
    },
})

-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99

