return {
	"mfussenegger/nvim-dap-python",
	dependencies = {
		"mfussenegger/nvim-dap",
	},
	config = function()
		-- my_keymappings.lua

		-- 导入 dap-python 模块
		--[[ local dap_python = require("dap-python") ]]
		local mason_path = vim.fn.glob(vim.fn.stdpath("data") .. "/mason/")
		pcall(function()
			require("dap-python").setup(mason_path .. "/Users/zirs/miniforge3/envs/zirs_env/bin/python")
		end)

		-- 设置 nnoremap 键映射
		vim.api.nvim_set_keymap(
			"n",
			"<silent> <leader>dn",
			[[:lua dap_python.test_method()<CR>]],
			{ noremap = true, silent = true }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<silent> <leader>df",
			[[:lua dap_python.test_class()<CR>]],
			{ noremap = true, silent = true }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>dt",
			'<cmd>lua require("dap").toggle_breakpoint()<cr>',
			{ noremap = true, silent = true, desc = "Toggle breakpoint" }
		)

		-- 设置 vnoremap 键映射
		vim.api.nvim_set_keymap(
			"x",
			"<silent> <leader>ds",
			[[:lua dap_python.debug_selection()<CR>]],
			{ noremap = true, silent = true }
		)
	end,
}
