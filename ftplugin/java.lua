-- ====================================================================== 方式 1
local HOME = os.getenv 'HOME'
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = HOME .. '/opt/neovim-dev/auto_create/' .. project_name
local bundles = {
    vim.fn.glob('/Users/glfadd/opt/neovim-dev/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar'),
}
vim.list_extend(bundles, vim.split(vim.fn.glob('/Users/glfadd/opt/neovim-dev/vscode-java-test/server/*.jar', 1), '\n'))
-- 设置 Maven 路径和配置文件
--vim.fn.setenv('MAVEN_HOME', '/Users/glfadd/.sdkman/candidates/maven/current/bin/mvn')  -- 指定 Maven 的安装路径
--vim.fn.setenv('MAVEN_OPTS', '-Dmaven.repo.local=/Users/glfadd/.m2/repository')  -- 指定 Maven 本地仓库的路径
--vim.fn.setenv('MAVEN_CONFIG', '/Users/glfadd/.m2/settings.xml')  -- 指定 Maven 的配置文件
local config = {
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens',
        'java.base/java.util=ALL-UNNAMED',
        '--add-opens',
        'java.base/java.lang=ALL-UNNAMED',
        ----增加lombok插件支持，getter setter good bye
        --'-javaagent:/Users/glfadd/opt/neovim-dev/lombok.jar',
        --'-Xbootclasspath/a:/Users/glfadd/opt/neovim-dev/lombok.jar',
        '-jar', '/Users/glfadd/.local/share/nvim/mason/share/jdtls/plugins/org.eclipse.equinox.launcher.jar',
        -- 路径, 不是文件
        '-configuration', '/Users/glfadd/.local/share/nvim/mason/share/jdtls/config',
        '-data', workspace_dir
    },
    root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' }),

    settings = {
        java = {
            --home = '/opt/jdk-11.0.12',
            eclipse = {
                downloadSources = true,
            },
            server = {
                launchMode = 'Hybrid',
            },
            maven = {
                downloadSources = true,
                updateSnapshots = true,
            },
            configuration = {
                maven = {
                    userSettings = maver_setting,
                    globalSettings = maver_setting
                },
                runtimes = {
                    -- 文档地址 https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
                    -- 配置属性参考 interface RuntimeOption
                    -- name 的名字不能随便起, 必须满足 enum ExecutionEnvironment 里面的值
                    {
                        name = 'JavaSE-1.8',
                        path = '/Users/glfadd/.sdkman/candidates/java/8.0.392-amzn/',
                        --javadoc = '';
                        --sources = '';
                        --default = '';
                    },
                    {
                        name = 'JavaSE-17',
                        path = '/Users/glfadd/.sdkman/candidates/java/17.0.10-amzn',
                    },
                }
            }
        }
    },

    init_options = {
        bundles = bundles
    }
}
require('jdtls').start_or_attach(config)

-- ====================================================================== 方式 2
--local HOME = os.getenv 'HOME'
--local DEBUGGER_LOCATION = HOME .. '/.local/share/nvim'
--local maver_setting = HOME .. '/.m2/settings.xml'
---- Debugging
--local bundles = {
--    vim.fn.glob(
--            DEBUGGER_LOCATION .. '/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar'
--    ),
--}
--vim.list_extend(bundles, vim.split(vim.fn.glob(DEBUGGER_LOCATION .. '/vscode-java-test/server/*.jar'), '\n'))
---- jdtls 通过mason安装
--local config = {
--    cmd = { DEBUGGER_LOCATION .. '/mason/bin/jdtls' },
--    root_dir = vim.fs.dirname(vim.fs.find({ '.git', 'mvnw', 'gradlew' }, { upward = true })[1]),
--    init_options = {
--        bundles = bundles
--    },
--}
--config.on_attach = function(client, bufnr)
--    require('jdtls').setup_dap { hotcodereplace = 'auto' }
--    require('jdtls').setup.add_commands()
--    require('jdtls.dap').setup_dap_main_class_configs()
--end
--require('jdtls').start_or_attach(config)