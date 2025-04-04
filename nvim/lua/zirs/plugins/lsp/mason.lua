return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
		--[[ "WhoIsSethDaniel/mason-tool-installer.nvim", ]]
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- import mason-null-ls
		local mason_null_ls = require("mason-null-ls")
		--[[ local mason_tool_installer = require("mason-tool-installer") ]]

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"pyright",
				"jdtls",
				--[[ "ltex", -- latex ]]
				--[[ "marksman", -- markdown ]]
				--[[ "sqlls", -- SQL ]]
				"yamlls", -- yaml
				"gopls", -- Go
				"jsonls", -- JSON
				"clangd", -- C/C++
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_null_ls.setup({
			-- list of formatters & linters for mason to install
			ensure_installed = {
				"prettier", -- JSON formatter
				"eslint_d", -- JavaScript/TypeScript linter
				"black", -- Python formatter
				"flake8", -- Python linter
				"stylua", -- Lua formatter
				"google_java_format", -- Java formatter
				"gofmt", -- Go formatter
				"goimports", -- Go imports formatter
				"golangci_lint", -- Go linter
				"clang-format", -- C/C++ formatter
				"cpplint", -- C/C++ linter
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true,
		})
	end,
}
