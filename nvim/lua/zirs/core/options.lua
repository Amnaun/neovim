-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- line wrapping
vim.opt.wrap = false

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- cursor line
vim.opt.cursorline = true

-- appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- change '-' as a word
vim.opt.iskeyword:append("-")

vim.swapfile = false

-- highlight yank
-- 定义自动命令组
vim.cmd([[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup END
]])



-- 设置 Python 虚拟环境路径
vim.g.python3_host_prog = "/Users/zirs/miniforge3/envs/zirs_env/bin/python"

-- 设置 textwidth
vim.api.nvim_exec(
	[[
  set textwidth=80
]],
	false
)

-- 删除 formatoptions 中的 t 选项
vim.bo.formatoptions = string.gsub(vim.bo.formatoptions, "t", "")
