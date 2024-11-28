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
		-- Set the them (wave or dragon)
		theme = "dragon",
		-- Use a custom background color
		overrides = function(colors)
		    return {
			Normal = { bg = "#171717" }
		    }
		end,
            })
	    -- Make sure the colorscheme is applied
	    vim.cmd([[colorscheme kanagawa]])
	end,
    }
}
