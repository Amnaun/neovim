return {
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = true,
					mini = true,
					telescope = {
						enabled = true,
						style = "nvchad",
					},
				},
				flavour = "macchiato", -- latte, frappe, macchiato, mocha
			})
			-- setup must be called before loading
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}

--[[ return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({ style = "day" })
		vim.cmd.colorscheme("tokyonight")
	end,
} ]]
