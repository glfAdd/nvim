local vim = vim
local map = vim.api.nvim_set_keymap
local keymap = vim.keymap.set
local opt = { noremap = true, silent = true }
-- ......................................... base
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 调整分屏尺寸
map("n", "<M-up>", "<cmd>resize -2<CR>", opt)
map("n", "<M-down>", "<cmd>resize +2<CR>", opt)
map("n", "<M-left>", "<cmd>vertical resize -3<CR>", opt)
map("n", "<M-right>", "<cmd>vertical resize +3<CR>", opt)
-- 分屏切换
map("n", "<M-l>", "<c-w>l", opt)
map("n", "<M-h>", "<c-w>h", opt)
map("n", "<M-j>", "<c-w>j", opt)
map("n", "<M-k>", "<c-w>k", opt)

-- ......................................... bufferline
map("n", "<leader>[", "<cmd>BufferLineCyclePrev<CR>", opt)
map("n", "<leader>]", "<cmd>BufferLineCycleNext<CR>", opt)
map("n", "<leader>bc", "<cmd>bd<CR>", opt) -- close
map("n", "<leader>bn", "<cmd>enew<CR>", opt) -- new
map("n", "<leader>bP", "<cmd>BufferLinePickClose<CR>", opt)
map("n", "<leader>bp", "<cmd>BufferLinePick<CR>", opt)
map("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", opt) -- 关闭左边
map("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", opt) -- 关闭右边
map("n", "<leader>ba", "<cmd>BufferLineCloseLeft<CR><cmd>BufferLineCloseRight<CR>", opt) -- 关闭除当前所有
map("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", opt)
map("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", opt)
map("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", opt)
map("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", opt)
map("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", opt)
map("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", opt)
map("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", opt)
map("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", opt)
map("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", opt)
map("n", "<leader>0", "<cmd>BufferLineGoToBuffer 10<CR>", opt)

-- ......................................... telescope
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opt) -- buffer 名称搜索
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opt)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opt) -- 文本搜索
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opt) -- 搜索帮助信息
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opt) -- 历史文件搜索
map("n", "<leader>fp", "<cmd>Telescope project<CR>", opt)
-- map('n', '<leader>fm', '<cmd>Telescope media_files<CR>', opt) -- mac 系统不支持

-- ......................................... nvimTree
map("n", "<M-m>", "<cmd>NvimTreeToggle<CR>", opt)
map("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>", opt)

-- ......................................... range
map("n", "<M-o>", "<cmd>RnvimrToggle<CR>", opt)
map("t", "<M-o>", "<C-\\><C-n><cmd>RnvimrToggle<CR>", opt)
map("t", "<M-i>", "<C-\\><C-n><cmd>RnvimrResize 0,1,2<CR>", opt) -- rnvimr_presets 数组的配置

-- ......................................... vim-floaterm 嵌套窗口
map("n", "<M-t>", "<cmd>FloatermToggle<CR>", opt)
map("t", "<M-t>", "<C-\\><C-N><cmd>FloatermToggle<CR>", opt)
map("n", "<M-w>", "<cmd>FloatermKill<CR>", opt)
map("t", "<M-w>", "<C-\\><C-N><cmd>FloatermKill<CR>", opt)

map("n", "<leader>tt", "<cmd>FloatermNew<CR>", opt)
map("n", "<leader>tn", "<cmd>FloatermNext<CR>", opt)
map("n", "<leader>tp", "<cmd>FloatermPrev<CR>", opt)

-- ......................................... nvim-window 编码切换窗口
map("n", "<M-p>", '<cmd>lua require("nvim-window").pick()<CR>', opt)
map("i", "<M-p>", '<cmd>lua require("nvim-window").pick()<CR>', opt)

-- ......................................... winshift.nvim (窗口移动)
map("n", "<M-H>", "<cmd>WinShift left<CR>", opt)
map("n", "<M-J>", "<cmd>WinShift down<CR>", opt)
map("n", "<M-K>", "<cmd>WinShift up<CR>", opt)
map("n", "<M-L>", "<cmd>WinShift right<CR>", opt)

-- ......................................... 函数名地图
map("n", "<leader>tr", "<cmd>SymbolsOutline<CR>", opt)

-- ......................................... undotree
map("n", "<leader>tu", "<cmd>UndotreeToggle<CR>", opt)

-- ......................................... 语法错误列表
map("n", "<leader>et", "<cmd>TroubleToggle<CR>", opt)
map("n", "<leader>ew", "<cmd>Trouble workspace_diagnostics<CR>", opt)
map("n", "<leader>ed", "<cmd>Trouble document_diagnostics<CR>", opt)
map("n", "<leader>el", "<cmd>Trouble loclist<CR>", opt)
map("n", "<leader>eq", "<cmd>Trouble quickfix<CR>", opt)
map("n", "<leader>er", "<cmd>Trouble lsp_references<CR>", opt)

-- ......................................... lsp
-- 跳转到定义(悬浮窗口)
map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opt)
map("n", "g2", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
map("n", "g3", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
-- 定义和引用文件查找
map("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opt)
-- 定义列表
map("n", "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opt)
-- 引用列表
map("n", "<leader>lrf", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
-- 重命名
map("n", "gr", "<cmd>Lspsaga rename<CR>", opt)
-- 跳转到实现
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
-- 智能修复
map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
-- 跳到上一个错误
map("n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opt)
-- 跳到下一个错误
map("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opt)
-- 悬浮文档
map("n", "gk", "<cmd>Lspsaga hover_doc<CR>", opt)
-- -- 打开终端
-- map("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", opt)
-- -- 关闭终端
-- map("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opt)
-- 右边函数变量列表
map("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opt)

-- 只跳转到错
keymap("n", "[E", function()
    require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
    require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

map("n", "<leader>law", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opt)
map("n", "<leader>lrw", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opt)
-- keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>", { silent = true })

-- ......................................... dap
map("n", "<leader>dt", '<cmd>lua require("dapui").toggle()<CR>', opt) -- dap ui
map("n", "<leader>dp", '<cmd>lua require"dap".pause()<CR>', opt) -- 
map("n", "<leader>db", '<cmd>lua require"dap".step_back()<CR>', opt) -- 
map("n", "<leader>dc", '<cmd>lua require"dap".continue()<CR>', opt) -- 
map("n", "<leader>dq", '<cmd>lua require"dap".terminate()<CR>', opt) -- 
map("n", "<leader>dk", '<cmd>lua require"dap".step_over()<CR>', opt) -- 
map("n", "<leader>di", '<cmd>lua require"dap".step_into()<CR>', opt) -- 
map("n", "<leader>do", '<cmd>lua require"dap".step_out()<CR>', opt) -- 
map("n", "<leader>dr", '<cmd>lua require"dap".run_last()<CR>', opt) -- 

map("n", "<leader>db", '<cmd>lua require"dap".toggle_breakpoint()<CR>', opt)
map("n", "<leader>d1", '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opt)
-- 输入日志, 执行到这个断点的时候打印输入的内容
map("n", "<leader>d2", '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', opt)
map("n", "<leader>d3", '<cmd>lua require"dap".repl.open()<CR>', opt)

-- ......................................... cmp

-- ......................................... toggleterm
-- function _G.set_terminal_keymaps()
--   local opts = {noremap = true}
--   vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
--   -- vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
-- end

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
    vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
    vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
end

-- 使这些按键用于 toggle
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
map("n", "<leader>ht", ":ToggleTermToggleAll<CR>", opt)


-- ......................................... hop 快速选择单词
--map("n", "<M-u>", '<cmd>HopChar1MW<CR>', opt)
--map("i", "<M-u>", '<cmd>HopChar1MW<CR>', opt)
--map("n", "<M-i>", '<cmd>HopLineMW<CR>', opt)
--map("i", "<M-i>", '<cmd>HopLineMW<CR>', opt)
---- ......................................... lazygit
--map("n", "<leader>gg", "<cmd>LazyGit<CR>", opt)
---- ......................................... translator
--map("n", "<leader>w", "<cmd>TranslateW<CR>", opt)
--map("v", "<leader>w", "<cmd>TranslateWV<CR>", opt)

