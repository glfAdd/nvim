--[[
提示错误: Telescope-Frecency remove 10 entries from database
]]--
---- 导入 Telescope-Frecency 模块
--local frecency = require('telescope_frecency')
--
---- 删除指定数量的条目
--local function remove_entries(num_entries)
--    for _ = 1, num_entries do
--        frecency.remove_entry()
--    end
--    print('Successfully removed ' .. num_entries .. ' entries from the database.')
--end
--
---- 调用函数，删除 10 个条目
--remove_entries(10)