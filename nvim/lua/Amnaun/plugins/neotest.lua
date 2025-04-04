return {
	"nvim-neotest/neotest",
	dependencies = { "nvim-neotest/neotest-python", "nvim-neotest/nvim-nio" },
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-python")({
					dap = {
						justMyCode = false,
						console = "integratedTerminal",
					},
					args = { "--log-level", "DEBUG", "--quiet" },
					runner = "pytest",
				}),
			},
		})
		-- Test Method
		vim.api.nvim_set_keymap(
			"n",
			"dm",
			'<cmd>lua require("neotest").run.run()<cr>',
			{ noremap = true, silent = true, desc = "Run DAP Test Method" }
		)

		-- Test Method DAP
		vim.api.nvim_set_keymap(
			"n",
			"dM",
			'<cmd>lua require("neotest").run.run({strategy = "dap"})<cr>',
			{ noremap = true, silent = true }
		)

		-- Test Class
		vim.api.nvim_set_keymap(
			"n",
			"df",
			'<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>',
			{ noremap = true, silent = true }
		)

		-- Test Class DAP
		vim.api.nvim_set_keymap(
			"n",
			"dF",
			'<cmd>lua require("neotest").run.run({vim.fn.expand("%"), strategy = "dap"})<cr>',
			{ noremap = true, silent = true }
		)

		-- Test Summary
		vim.api.nvim_set_keymap(
			"n",
			"dS",
			'<cmd>lua require("neotest").summary.toggle()<cr>',
			{ noremap = true, silent = true }
		)
	end,
}
