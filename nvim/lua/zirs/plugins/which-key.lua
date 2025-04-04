return {
	"folke/which-key.nvim",
	dependencies = { "echasnovski/mini.nvim" },
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		plugins = {
			marks = true, -- 显示标记
			registers = true, -- 显示寄存器
			spelling = {
				enabled = true, -- 启用拼写建议
				suggestions = 20, -- 拼写建议数量
			},
		},
		icons = {
			breadcrumb = "»", -- 目录图标
			separator = "➜", -- 分隔符图标
			group = "+", -- 组图标
		},
		window = {
			border = "single", -- 窗口边框样式
			position = "bottom", -- 窗口位置
			margin = { 1, 0, 1, 0 }, -- 窗口边距
			padding = { 2, 2, 2, 2 }, -- 窗口内边距
		},
		layout = {
			height = { min = 4, max = 25 }, -- 窗口高度
			width = { min = 20, max = 50 }, -- 窗口宽度
			spacing = 3, -- 项目间距
			align = "left", -- 对齐方式
		},
		ignore_missing = true, -- 忽略缺失的键映射
		hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- 隐藏的键映射
		show_help = true, -- 显示帮助信息
	},
	config = function()
		local status_ok, which_key = pcall(require, "which-key")
		if not status_ok then
			return
		end

		-- 更新后的映射配置

		local mappings = {

			["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" }, -- File Explorer
			["<leader>k"] = { "<cmd>bdelete<CR>", "Kill Buffer" }, -- Close current file
			["m"] = { "<cmd>Mason<cr>", "Mason" }, -- LSP Manager
			["<leader>p"] = { "<cmd>Lazy<CR>", "Plugin Manager" }, -- Invoking plugin manager
			["q"] = { "<cmd>wqall!<CR>", "Quit" }, -- Quit Neovim after saving the file
			["r"] = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Reformat Code" },
		}

		local opts = {
			mode = "n", -- NORMAL mode
			silent = true, -- 使用 `silent` 创建键映射
			noremap = true, -- 使用 `noremap` 创建键映射
			nowait = true, -- 使用 `nowait` 创建键映射
		}

		-- 注册映射
		which_key.add(mappings, opts)
	end,
}
