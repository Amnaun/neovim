return {
	"akinsho/toggleterm.nvim",
	version = "*",
	-- config = true,
	config = function()
		local term = require("toggleterm")
		term.setup({
			size = 20,
			open_mapping = [[<C-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			-- direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})

		-- python
		local Terminal = require("toggleterm.terminal").Terminal
		local python = Terminal:new({ cmd = "python3", hidden = true })

		function _PYTHON_TOGGLE()
			python:toggle()
		end

		local keymap = vim.keymap
		local opts = { buffer = 0 }
		keymap.set("n", "<leader>zz", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" }) -- toggle file explorer
		keymap.set("n", "<leader>zf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle float terminal" }) -- toggle file explorer
		keymap.set("n", "<leader>zp", "<cmd>lua _PYTHON_TOGGLE()<CR>", { desc = "Toggle python terminal" }) -- toggle file explorer
		keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
		keymap.set("t", "<S-Left>", [[<Cmd>wincmd h<CR>]], opts)
		keymap.set("t", "<S-Down>", [[<Cmd>wincmd j<CR>]], opts)
		keymap.set("t", "<S-Up>", [[<Cmd>wincmd k<CR>]], opts)
		keymap.set("t", "<S-Right>", [[<Cmd>wincmd l<CR>]], opts)
		keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
	end,
}
