return {

	-------------
	-- Conform --
	-------------
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					c = { "clang-format", "clang_format" },
					cpp = { "clang-format", "clang_format" },
					lua = { "stylua" },
					markdown = { "prettierd" },
					python = { "black" },
					rust = { "rustfmt" },
				},
				formatters = {
					clang_format = {
						command = "clang-format",
						args = {
							"--style={BasedOnStyle: Google, IndentWidth: 4, UseTab: Never}",
						},
						stdin = true,
					},
				},
				format_on_save = {
					-- These options will be passed to conform.format()
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
		end,
	},

	-------------------
	-- Mason Conform --
	-------------------
	{
		"zapling/mason-conform.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"stevearc/conform.nvim",
		},
		config = function()
			require("mason-conform").setup({})
		end,
	},
}
