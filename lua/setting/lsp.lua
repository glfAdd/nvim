-- 不能在 setup 里面直接写 function, 不支持
local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')
--......................................... python
-- 计算 pyenv 虚拟环境 python 路径
local function calculate_python_path()
    local pyenv_root = vim.fn.system('pyenv root'):gsub('%s+', '')
    local pyenv_version = vim.fn.system('pyenv version-name'):gsub('%s+', '')
    if pyenv_version ~= '' then
        -- 如果已经在 pyenv 环境中，则直接使用当前环境的 Python 解释器
        return vim.fn.exepath('python3')
    else
        -- 在这里添加你希望使用的虚拟环境名称
        local desired_venv = 'your_virtual_environment_name'
        local venv_path = pyenv_root .. '/versions/' .. desired_venv .. '/bin/python'
        return venv_path
    end
end

-- 获取当前文件所在的项目根目录
local function calculate_root_dir(fname)
    return lspconfig.util.find_git_ancestor(fname) or vim.fn.getcwd()
end

lspconfig.pyright.setup({
    -- 使用 pyright-langserver 命令来启动 Pyright 语言服务器，并通过标准输入/输出进行与 Neovim 的通信
    cmd = { 'pyright-langserver', '--stdio' },
    root_dir = calculate_root_dir,
    settings = {
        python = {
            analysis = {
                -- Pyright 自动搜索 Python 的路径, 包括虚拟环境
                autoSearchPaths = true,
                -- 诊断信息将基于整个工作区进行, 而不仅仅是单个文件
                diagnosticMode = "workspace",
                -- 将库代码用于类型推断
                useLibraryCodeForTypes = true,
            },
            pythonPath = calculate_python_path()
        },
    },
})
