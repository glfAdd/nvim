require('notify').setup({
    position = "top_left", -- 设置通知的位置，默认为"bottom_right"
    timeout = 5000, -- 设置通知显示的持续时间（毫秒），默认为5000
    --render = 'wrapped-compact', -- 设置为紧凑模式自动换行
})


-- 关闭 "4 lines yanked" 消息提示
