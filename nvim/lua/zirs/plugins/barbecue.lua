return {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	version = "*",
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons", -- optional dependency
	},
	opts = {
		theme = "auto", -- 自动主题
		show_modified = true, -- 显示文件修改状态
		separator = ">", -- 路径分隔符
		depth_limit = 0, -- 路径深度限制，0 表示无限制
		icons = {
			file = "",
			module = "",
			namespace = "",
			package = "",
			class = "ﴯ",
			method = "",
			property = "",
			field = "",
			constructor = "",
			enum = "",
			interface = "",
			--[[ function = "", ]]
			variable = "",
			constant = "",
			string = "",
			number = "#",
			boolean = "⊨",
			array = "",
			object = "",
			key = "",
			null = "ﳠ",
			enum_member = "",
			struct = "פּ",
			event = "",
			operator = "",
			type_parameter = "",
		},
	},
}
