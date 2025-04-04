vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- clear search highlights
keymap.set("n", "<leader>hh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- tmux_navigator
-- 设置 g:tmux_navigator_no_mappings 为 1
vim.g.tmux_navigator_no_mappings = 1
-- 创建 Lua 的键映射
vim.api.nvim_set_keymap("n", "<C-h>", ":<C-U>TmuxNavigateLeft<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", ":<C-U>TmuxNavigateDown<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":<C-U>TmuxNavigateUp<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":<C-U>TmuxNavigateRight<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-Tab>", ":<C-U>TmuxNavigatePrevious<CR>", { silent = true })

-- 实现markdown文件{}的问题
-- 检查当前文件是否为Markdown文件
local function is_markdown()
	local filetype = vim.bo.filetype
	return filetype == "markdown" or filetype == "mkd" or filetype == "md"
end

-- 如果是markdown文件的一些默认设置
if is_markdown() then
	vim.bo.tabstop = 2
	vim.bo.expandtab = true
	vim.bo.shiftwidth = 4
	vim.wo.wrap = true
	vim.wo.linebreak = true
	vim.wo.breakindent = true
end

-- 设置键映射
vim.api.nvim_set_keymap(
	"i",
	"{",
	[[<Cmd>lua insert_markdown_braces()<CR>]],
	{ noremap = true, expr = false, silent = true }
)

vim.keymap.set("i", "jk", "<Esc>", { silent = true, noremap = true })
