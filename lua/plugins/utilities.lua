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

    ---------------
    -- Telescope --
    ---------------
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)
            vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        end,
    }
}
