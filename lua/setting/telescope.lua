require("telescope").setup({
    defaults = {
        layout_strategy = "horizontal",
        layout_config = {
            height = 0.95, -- 边框距离
            width = 0.95, -- 边框距离
            preview_width = 0.5, -- 左右比例
        },
    },
    pickers = {
        find_files = {
            -- theme = "dropdown", -- 上下样式
            -- theme = "cursor", -- 小悬浮窗口
            -- theme = "ivy", -- 下部窗口
        },
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or 'ignore_case' or 'respect_case'
        },
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
        },
        -- 项目配置
        project = {
            base_dirs = {
                --'~/dev/src',
                --{ '~/dev/src2' },
                { '~/Downloads/source', max_depth = 2 },
                --{ path = '~/dev/src4' },
                --{ path = '~/dev/src5', max_depth = 2 },
            },
            --hidden_files = true, -- default: false
            --theme = "dropdown",
            --order_by = "asc",
            --search_by = "title",
            --sync_with_nvim_tree = true, -- default false
            ---- default for on_project_selected = find project files
            --on_project_selected = function(prompt_bufnr)
            --    -- Do anything you want in here. For example:
            --    project_actions.change_working_directory(prompt_bufnr, false)
            --    require("harpoon.ui").nav_file(1)
            --end
        }
    },
})

require("telescope").load_extension("ui-select")
require("telescope").load_extension("fzf")
require("telescope").load_extension("dap")
require("telescope").load_extension('frecency') -- 搜做结果排序优化
require("telescope").load_extension('project')
