return {
	----------------
	-- LSP Config --
	----------------
	{
		"neovim/nvim-lspconfig",
	},

	----------------------
	-- Mason LSP Config --
	----------------------
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd",
					"lua_ls",
					"pylsp",
					"rust_analyzer@2024-10-21",
				},
			})

			-- Define handlers for language servers
			require("mason-lspconfig").setup_handlers({
				-- Default handler for all servers
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,

				-- Custom configuration for lua_ls
				["lua_ls"] = function()
					require("lspconfig").lua_ls.setup({
						settings = {
							Lua = {
								diagnostics = {
									-- Recognize `vim` as a global
									globals = { "vim" },
								},
								workspace = {
									library = {
										[vim.fn.expand("$VIMRUNTIME/lua")] = true,
										[vim.fn.stdpath("config") .. "/lua"] = true,
									},
								},
							},
						},
					})
				end,
			})

			-- Diagnostic configuration
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})
		end,
	},
}
