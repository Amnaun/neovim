return {
	"easymotion/vim-easymotion",
	config = function()
		-- 禁用默认映射
		vim.g.EasyMotion_do_mapping = 0 -- Disable default mappings

		-- 跳转到任何位置的快捷键映射
		-- `s{char}{label}`
		vim.api.nvim_set_keymap("n", "s", "<Plug>(easymotion-overwin-f)", { noremap = false, silent = true })

		-- 或者
		-- `s{char}{char}{label}`
		-- 需要多按一次键，但可能更舒适
		vim.api.nvim_set_keymap("n", "ss", "<Plug>(easymotion-overwin-f2)", { noremap = false, silent = true })

		-- 启用智能大小写（区分大小写）
		vim.g.EasyMotion_smartcase = 1

		-- "JK" 行内跳转
		vim.api.nvim_set_keymap("n", "<Leader>j", "<Plug>(easymotion-j)", { noremap = false, silent = true })
		vim.api.nvim_set_keymap("n", "<Leader>k", "<Plug>(easymotion-k)", { noremap = false, silent = true })
	end,
}
