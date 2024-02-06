return require("packer").startup(function(use)
    -- ......................................... Packer can manage itself
    use { "wbthomason/packer.nvim" }

    -- ......................................... 主题
    use { "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" }, config = function()
        require("setting.gruvbox")
    end }
    use { 'nvim-tree/nvim-web-devicons', config = function()
        require("setting.nvim-web-devicons")
    end }
    -- ......................................... 启动页面
    use { "goolord/alpha-nvim", requires = { 'nvim-tree/nvim-web-devicons' }, config = function()
        require("setting.alpha-nvim")
    end }
    -- ......................................... 文件树
    use { "kyazdani42/nvim-tree.lua", requires = 'kyazdani42/nvim-web-devicons', config = function()
        require("setting.nvim-tree")
    end }
    -- ......................................... 下面 status
    use { "nvim-lualine/lualine.nvim", config = function()
        require("setting.lualine")
    end }
    -- ......................................... 上面 buffer
    use { "akinsho/bufferline.nvim", config = function()
        require("setting.bufferline-nvim")
    end }
    -- ......................................... 语法高亮 (效果不明显是否用 ???)
    use { "nvim-treesitter/nvim-treesitter", config = function()
        require("setting.nvim-treesitter")
    end, run = ':TSUpdate' }
    -- ......................................... 快捷键提示
    use { "folke/which-key.nvim", config = function()
        require("setting.which-key")
    end }
    -- ......................................... ranger
    use { "kevinhwang91/rnvimr", config = function()
        require("setting.rnvimr")
    end }
    -- ......................................... 模糊查询
    use { "nvim-telescope/telescope.nvim", requires = { 'nvim-lua/plenary.nvim' }, tag = '0.1.5', config = function()
        require("setting.telescope")
    end }
    use { "nvim-telescope/telescope-project.nvim", config = function()
        require("setting.telescope-project")
    end }
    use { "nvim-telescope/telescope-dap.nvim" }
    use { "nvim-telescope/telescope-ui-select.nvim" }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" } -- 模糊查询
    use { "nvim-telescope/telescope-fzf-writer.nvim" }
    use { "nvim-telescope/telescope-hop.nvim" }
    use { 'sudormrfbin/cheatsheet.nvim', requires = {
        { 'nvim-telescope/telescope.nvim' },
        { 'nvim-lua/popup.nvim' },
        { 'nvim-lua/plenary.nvim' } }
    }
    --use { 'tami5/sqlite.lua' } -- 搜做结果排序优化 (依赖)
    -- 搜做结果排序优化
    use { "nvim-telescope/telescope-frecency.nvim", config = function()
        require("setting.telescope-frecency")
    end }
    -- ......................................... lsp dap formatter installer
    use { "williamboman/mason.nvim", config = function()
        require("setting.mason")
    end }
    use { 'williamboman/mason-lspconfig.nvim' }
    -- ......................................... lsp
    use { "neovim/nvim-lspconfig", config = function()
        require("setting.lsp")
    end }
    use { 'mfussenegger/nvim-jdtls' } -- 自动加载 ftplugin/java.lua 配置
    -- ......................................... cmp
    -- 代码补全数据源
    use { "hrsh7th/nvim-cmp",
          requires = {
              "hrsh7th/cmp-nvim-lsp",
              "hrsh7th/cmp-buffer",
              "hrsh7th/cmp-path",
              "hrsh7th/cmp-cmdline",
              "hrsh7th/cmp-nvim-lua",
              "hrsh7th/cmp-emoji"
          }, config = function()
            require("setting.cmp")
        end }
    use { "L3MON4D3/LuaSnip" } -- 代码补全引擎
    use { "saadparwaiz1/cmp_luasnip" } -- 代码补全数据源与引擎间的桥梁
    use { "onsails/lspkind-nvim" } -- 补全提示中 VScode 式样的图标
    use { "rafamadriz/friendly-snippets" } -- 图标支持
    use { 'lukas-reineke/cmp-under-comparator' } -- 一个或多个下划线开头的完成项进行排序
    -- ......................................... lsp ui 增强
    use { "glepnir/lspsaga.nvim", after = 'nvim-lspconfig', config = function()
        require("setting.lspsaga-nvim")
    end }
    -- ......................................... 语法错误列表
    use { "folke/trouble.nvim", requires = { 'nvim-tree/nvim-web-devicons' }, config = function()
        require("setting.trouble")
    end }
    -- ......................................... 函数参数提示
    --use { "ray-x/lsp_signature.nvim", config = function()
    --    require("setting.lsp_signature")
    --end }
    use { "ray-x/lsp_signature.nvim" }
    -- ......................................... 注释
    use { "numToStr/Comment.nvim", config = function()
        require("setting.comment")
    end }
    -- ......................................... 文本对齐
    use { "junegunn/vim-easy-align" }
    -- ......................................... undo tree
    use { "mbbill/undotree", config = function()
        require("setting.undotree")
    end }
    -- ......................................... 通知栏
    use { "rcarriga/nvim-notify", config = function()
        require("setting.nvim-notify")
    end }
    -- ......................................... 窗口
    -- 编号选择窗口
    use { "yorickpeterse/nvim-window", config = function()
        require("setting.nvim-window")
    end }
    -- 终端窗口
    use { "akinsho/toggleterm.nvim", config = function()
        require("setting.toggleterm")
    end }
    -- 嵌套窗口
    use { "voldikss/vim-floaterm", config = function()
        require("setting.vim-floaterm")
    end }
    -- 窗口移动
    use { "sindrets/winshift.nvim", config = function()
        require("setting.winshift")
    end }
    -- ......................................... 启动时间统计
    -- :startuptime
    use { "dstein64/vim-startuptime" }
    -- ......................................... 边栏函数, 变量
    use { "simrat39/symbols-outline.nvim", config = function()
        require("setting.symbols-outline")
    end }
    -- ......................................... quickfix 窗口
    use { "kevinhwang91/nvim-bqf", ft = "qf" }
    -- ......................................... 快速选择单词
    use { "phaazon/hop.nvim", branch = "v2", config = function()
        require("setting.hop-nvim")
    end }
    -- ......................................... 代码格式化
    use { "mhartington/formatter.nvim", config = function()
        require("setting.formatter")
    end }
    -- ......................................... dap
    -- 自动加载 ftplugin 目录下 .lua 的语言配置文件
    use { "mfussenegger/nvim-dap", config = function()
        require("setting.dap")
    end }
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" }, config = function()
        require("setting.dap-ui")
    end }
    use { "theHamsta/nvim-dap-virtual-text" } -- 在调试过程中，在变量附近事实显示变量的值
    use { "mfussenegger/nvim-dap-python" } -- python
    use { "nvim-java/nvim-java" }
    use { "nvim-java/lua-async-await" }
    use { "nvim-java/nvim-java-core" }
    use { "nvim-java/nvim-java-test" }
    use { "nvim-java/nvim-java-dap" }
    -- ......................................... git
    use { "lewis6991/gitsigns.nvim" }


    ---- use neovim in browser
    ----  use {
    ----    'glacambre/firenvim',
    ----    run = function() vim.fn['firenvim#install'](0) end
    ----  }

    ---- markdown
    ---- use {
    ----   'preservim/vim-markdown',
    ----   requires = {'godlygeek/tabular'},
    ----   -- config = function()
    ----   --   require('setting.alpha-nvim')
    ----   -- end
    ---- }
    ---- use 'iamcco/markdown-preview.nvim' -- 浏览器预览 markdown
    ---
    ---- ......................................... 字典
    --use { "voldikss/vim-translator", config = function()
    --    require("setting.translator")
    --end }

    ---- ......................................... lazygit
    --use { "kdheepak/lazygit.nvim", requires = { "nvim-lua/plenary.nvim" }, config = function()
    --    require("setting.lazygit")
    --end }
end)
