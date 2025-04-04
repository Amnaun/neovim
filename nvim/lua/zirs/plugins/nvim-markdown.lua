return {
	"ixru/nvim-markdown",

	config = function()
		-- 设置 vim_markdown_math Latex
		vim.g.vim_markdown_math = 1

		vim.api.nvim_set_keymap("n", "<C-i>", "<Plug>Markdown_CreateLink", { silent = true })
		vim.api.nvim_set_keymap("n", "<C-b>", "<Plug>Markdown_Checkbox", { silent = true })
		vim.api.nvim_set_keymap("n", "<C-t>", ":Toc<CR>", { silent = true })
	end,
}
