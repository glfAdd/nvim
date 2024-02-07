--[[
自动加载 ftplugin 目录下 *.lua 配置文件 (java.lua python.lua)

-- ......................................... dap.configurations.java
type
    java: 语言的调试配置

request
    launch: 启动一个新的调试会话。这通常用于启动一个新的程序并附加调试器。
    attach: 附加到一个已经运行的进程，允许你在运行时调试。
    disconnect: 断开与调试器的连接，结束调试会话。
    setBreakpoints: 设置断点。
    continue: 继续执行程序。
    stepIn: 进入当前行的函数。
    stepOut: 从当前函数中步出。
    stepOver: 在当前函数内步过。
    pause: 暂停正在执行的程序。
    threads: 请求有关当前线程的信息。
    stackTrace: 请求有关当前堆栈帧的信息。
    scopes: 请求有关特定堆栈帧中的变量的信息。
    variables: 请求有关变量的信息。
--]]

local HOME = os.getenv "HOME"
-- 加载 json 配置文件
--require('dap.ext.vscode').load_launchjs(HOME .. '/.config/nvim/json-config/java.json')

local dap = require("dap")
-- ......................................... java
-- executable: 表示 Java 调试器是一个可执行文件，这个文件通常是 Java 虚拟机（JVM）。你需要提供 command 属性，指定可执行文件的路径，以及可能的参数。
-- server: 表示 Java 调试器是一个服务，可以通过指定的主机和端口进行连接。在这种情况下，你需要提供 host 和 port 属性。
-- extension: 用于指定一个 DAP 扩展作为 Java 调试器的适配器。这通常用于集成某些 IDE 或特定的调试器功能

--dap.adapters.java = {
--    {
--        type = 'executable',
--        command = '/Users/glfadd/.local/share/nvim/mason/packages/java-debug-adapter',
--    },
--}
--
--dap.configurations.java = {
--    {
--        type = 'java',
--        request = 'launch',
--        name = 'kkkkkkkkkk',
--        cwd = '${workspaceFolder}',
--        console = 'integratedTerminal',
--        --mainClass = 'your.package.YourMainClass',
--        --mainClass = function()
--        --    local current_file = vim.fn.expand('%:p:r')
--        --    local class_file = current_file:gsub('/', '.')
--        --    return class_file
--        --end,
--        javaPath = '/Users/glfadd/.sdkman/candidates/java/8.0.392-amzn/java', -- 可选，指定 Java 可执行文件路径
--        mainClass = "${fileBasenameNoExtension}",
--        --projectRoot = "${workspaceFolder}",
--        projectRoot = vim.fn.getcwd(),
--        vmArgs = { '--enable-preview' }
--        --classPaths = { '${workspaceFolder}/bin' },
--        --sourcePaths = { '${workspaceFolder}/src' },
--    },
--}
--

--dap.adapters.java = {
--    {
--        type = 'executable',
--        command = 'java',
--        args = { '-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005' },
--        env = {
--            JAVA_HOME = '/Users/glfadd/.sdkman/candidates/java/8.0.392-amzn', -- 指定你的 Java 安装路径
--        },
--        name = "Debug (Attach)",
--    },
--    {
--        type = 'server',
--        host = '127.0.0.1',
--        port = 5005,
--    },
--}
--dap.configurations.java = {
--    {
--        type = 'java', -- Java 语言的调试配置
--        request = 'attach',
--        name = "Debug (Attach)",
--    },
--    {
--        type = 'java',
--        request = 'launch',
--        name = "Debug (Launch)",
--        cwd = '${workspaceFolder}',
--        stopOnEntry = false,
--        mainClass = function()
--            local current_file = vim.fn.expand('%:p:r')
--            local class_file = current_file:gsub('/', '.')
--            return class_file
--        end, -- 指定你的主类
--        args = {}, -- 传递给主类的参数
--        runtimeArgs = { '-Xmx1024m' }, -- 运行时 JVM 参数
--        classPath = '${workspaceFolder}/bin', -- 指定类路径
--        sourcePaths = { '${workspaceFolder}/src' }, -- 源代码路径
--        modulePath = '', -- 模块路径
--        outDir = nil, -- 输出目录
--    },
--}


-- ........................................ python
------ 调试器使用 debugpy
----dap.adapters.python = {
----    -- type 表示启动调试器的方式
----    -- executable 表示由客户端自行启动调试器
----    type = "executable",
----    -- 启动调试器的命令
----    command = "/home/gong/.config/nvim/source/p3.11.0-venv/bin/python",
----    -- python 调试工具 debugpy 是一个 Python 的第三方模块, 使用 python -m debugpy.adapter 来启动这个调试器
----    args = { "-m", "debugpy.adapter" },
----}
----
------ 启动配置
----dap.configurations.python = {
----    {
----        -- 使用哪个调试器，跟我们之前配置的 dap.adapters相关
----        type = "python",
----        -- 调试的方式
----        -- request = "attach", -- 附加到一个已有的进程
----        request = "launch", -- 启动新进程调试
----        name = "python base",
----        -- 当前文件
----        program = "${file}",
----        pythonPath = function()
----            return "/usr/bin/python"
----        end,
----    },
----    {
----        type = "python",
----        request = "launch",
----        name = "python base venv",
----        program = "${file}",
----        pythonPath = function()
----            return os.getenv("VIRTUAL_ENV") .. "/bin/python"
----        end,
----    },
----    {
----        type = "python",
----        request = "launch",
----        name = "python flask",
----        console = "integratedTerminal",
----        module = "flask",
----        pythonPath = function()
----            return os.getenv("VIRTUAL_ENV") .. "/bin/python"
----        end,
----        args = { "run", "--port", "10469" },
----        env = {
----            FLASK_APP = "${file}",
----            FLASK_ENV = "development",
----            FLASK_DEBUG = "0",
----        },
----    },
----    {
----        type = "python",
----        request = "launch",
----        name = "python flask port",
----        console = "integratedTerminal",
----        module = "flask",
----        pythonPath = function()
----            return os.getenv("VIRTUAL_ENV") .. "/bin/python"
----        end,
----        args = function()
----            local args_string = vim.fn.input("Arguments: ")
----            return vim.split(args_string, " +")
----        end,
----        env = {
----            FLASK_APP = "${file}",
----            FLASK_ENV = "development",
----            FLASK_DEBUG = "0",
----        },
----    },
----}
