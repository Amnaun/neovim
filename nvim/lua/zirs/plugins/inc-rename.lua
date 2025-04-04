return {
	"smjonas/inc-rename.nvim",
	config = function()
		require("inc_rename").setup({
			input_buffer_type = "dressing",
			--[[ hl_group = "Substitute", ]]
		})
		require("dressing").setup({
			input = {
				override = function(conf)
					conf.col = -1
					conf.row = 0
					return conf
				end,
			},
		})
		vim.keymap.set("n", "<leader>rn", ":IncRename ", { desc = "rename" })
		--[[ vim.keymap.set("n", "<leader>rn", function()
			return ":IncRename " .. vim.fn.expand("<cword>")
		end, { expr = true }) ]]
	end,
}
