return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "slant",
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},
			highlights = {
				buffer_selected = { italic = false },
				diagnostic_selected = { italic = false },
				hint_selected = { italic = false },
				pick_selected = { italic = false },
				pick_visible = { italic = false },
				pick = { italic = false },
			},
			diagnostics = "nvim_lsp",
		},
	},
	config = function()
		local keymap = vim.keymap -- for conciseness([[ -- keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer ]])
	end,
}
