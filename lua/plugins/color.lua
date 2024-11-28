return {
    {
        --------------
        -- Kanagawa --
        --------------

        -- Github repo
        "rebelot/kanagawa.nvim",
        -- Prevent lazy loading
        lazy = false,
        -- Make sure it's applied before other plugins
        priority = 1000,
        -- Config block to further configure the plugin
        config = function()
            -- Call all setup functions
            require('kanagawa').setup({
                -- Use a custom background color
                overrides = function(colors)
                    return {
                        Normal = { bg = "#171717" }
                    }
                end,
            })
            -- Make sure the colorscheme is applied
            -- Options: wave, dragon, lotus (if you'd like your eyes to bleed)
            vim.cmd([[colorscheme kanagawa]])
        end,
    },
}
