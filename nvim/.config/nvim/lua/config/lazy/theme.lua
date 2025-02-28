return { {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			transparent = true,
			styles = {
				sidebars = "transparent"
			}
		})
		vim.cmd [[colorscheme tokyonight]]
	end
}, {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function ()
		require("gruvbox").setup({
			transparent_mode = true
		})
		-- vim.cmd [[colorscheme gruvbox]]
	end
} }
