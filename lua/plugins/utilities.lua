return {
    ---------------
    -- Autopairs --
    ---------------
    {
        -- Link the repo
        "windwp/nvim-autopairs",
        -- Load when the user enters insert mode
        event = "InsertEnter",
        -- Use the default configuration
        config = true
    },

    ----------------------
    -- Indent Blankline --
    ----------------------
    {
        -- Link the repo
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },

    ---------------
    -- Git Signs --
    ---------------
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({})
        end,
    },

    ----------------
    -- Treesitter --
    ----------------
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "bash",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "regex",
            }
        }
    },

    -------------
    -- Lualine --
    -------------
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup()
        end,
    },

    --------------
    -- Undotree --
    --------------
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
        end,
    },
}
