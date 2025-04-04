return {
	"nvim-neorg/neorg",
	run = ":Neorg sync-parsers", -- This is the important bit!
	config = function()
		require("neorg").setup({
			-- configuration here
			load = {
				["core.defaults"] = {},
				-- ["core.ui"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							work = "~/notes/work",
							personal = "~/notes/personal",
						},
					},
				},
				["core.concealer"] = {
					config = {
						folds = true,
						init_open_folds = "auto",
					},
				},
				-- ["core.ui.calendar"] = {},
				-- ["core.completion"] = {},
			},
		})
		require("Comment").setup({
			ignore = "^$",
			toggler = {
				line = "gc",
				block = "gcc",
			},
			-- opleader = {
			--     line = '<leader>c',
			--     block = '<leader>b',
			-- },
		})
	end,
}
