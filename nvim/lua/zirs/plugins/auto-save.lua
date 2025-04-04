return {
	"Pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({
			enabled = true, -- 启用自动保存
			--[[ execution_message = "AutoSave!", ]]
			events = { "TextChanged" }, -- 触发自动保存的事件 ]]
			conditions = {
				exists = true, -- 文件存在时才保存
				filename_is_not = {}, -- 不保存的文件名
				filetype_is_not = {}, -- 不保存的文件类型
				modifiable = true, -- 文件可修改时才保存
			},
			write_all_buffers = false, -- 是否保存所有缓冲区
			on_off_commands = true, -- 启用开关命令
			clean_command_line_interval = 0, -- 清理命令行消息的间隔
			debounce_delay = 135, -- 防抖延迟
		})
	end,
}
