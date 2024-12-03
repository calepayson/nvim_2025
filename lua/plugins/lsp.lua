return {
    ----------------
    -- LSP Config --
    ----------------
    {
        "neovim/nvim-lspconfig",
    },

    -----------
    -- Mason --
    -----------
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end,
    },

    ----------------------
    -- Mason LSP Config --
    ----------------------
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
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
        end,
    },
}

