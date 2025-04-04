return {
	"iamcco/markdown-preview.nvim",
	dependencies = {
		"ixru/nvim-markdown",
	},
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	-- run = function()
	-- 	vim.fn["mkdp#util#install"]()
	-- end,

	-- config = function()
	-- 	vim.g.mkdp_auto_start = 1 -- 自动启动Markdown预览
	-- 	vim.g.mkdp_browser = "/Applications/Arc.app"
	-- end,
}
