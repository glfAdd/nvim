require("dapui").setup({
    icons = { expanded = "", collapsed = "", current_frame = "" },
    -- 按键修改
    mappings = {
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
        toggle = "t",
    },
    -- 覆盖元素按键
    element_mappings = {
        -- Example:
        -- stacks = {
        --   open = "<CR>",
        --   expand = "o",
        -- }
    },
    expand_lines = 1,
    -- size: 指定宽度或高度. int 是实际大小, float 是百分比
    -- position: 浮动窗口的位置 (left right top bottom)
    -- 根据 elements 顺序展示
    layouts = {
        {
            elements = {
                -- Elements can be strings or table with id and size keys.
                { id = "scopes", size = 0.25 },
                "breakpoints",
                "stacks",
                "watches",
            },
            size = 40,
            position = "right",
        },
        {
            elements = {
                "repl",
                "console",
            },
            size = 0.25,
            position = "bottom",
        },
    },
    controls = {
        enabled = true,
        -- Display controls in this element
        element = "repl",
        icons = {
            pause = "",
            play = "",
            step_into = "",
            step_over = "",
            step_out = "",
            step_back = "",
            run_last = "",
            terminate = "",
        },
    },
    floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil, -- Floats will be treated as percentage of your screen.
        border = "single", -- Border style. Can be "single", "double" or "rounded"
        mappings = {
            close = { "q", "<Esc>" },
        },
    },
    windows = { indent = 1 },
    render = {
        max_type_length = nil, -- Can be integer or nil.
        max_value_lines = 100, -- Can be integer or nil.
    },
})

-- ......................................... 断点样式配置
local dap_breakpoint_color = {
    breakpoint = {
        ctermbg = 0,
        fg = "#993939",
        bg = "#31353f",
    },
    logpoing = {
        ctermbg = 0,
        fg = "#61afef",
        bg = "#31353f",
    },
    stopped = {
        ctermbg = 0,
        fg = "#98c379",
        bg = "#31353f",
    },
}
vim.api.nvim_set_hl(0, "DapBreakpoint", dap_breakpoint_color.breakpoint)
vim.api.nvim_set_hl(0, "DapLogPoint", dap_breakpoint_color.logpoing)
vim.api.nvim_set_hl(0, "DapStopped", dap_breakpoint_color.stopped)

local dap_breakpoint = {
    error = {
        text = "",
        texthl = "DapBreakpoint",
        linehl = "DapBreakpoint",
        numhl = "DapBreakpoint",
    },
    condition = {
        text = "",
        texthl = "DapBreakpoint",
        linehl = "DapBreakpoint",
        numhl = "DapBreakpoint",
    },
    rejected = {
        text = "",
        texthl = "DapBreakpint",
        linehl = "DapBreakpoint",
        numhl = "DapBreakpoint",
    },
    logpoint = {
        text = "",
        texthl = "DapLogPoint",
        linehl = "DapLogPoint",
        numhl = "DapLogPoint",
    },
    stopped = {
        text = "",
        texthl = "DapStopped",
        linehl = "DapStopped",
        numhl = "DapStopped",
    },
}
vim.fn.sign_define("DapBreakpoint", dap_breakpoint.condition)
vim.fn.sign_define("DapBreakpointCondition", dap_breakpoint.condition)
vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
vim.fn.sign_define("DapLogPoint", dap_breakpoint.logpoint)
vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)

-- ......................................... 事件自动打开 / 关闭 ui
local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end