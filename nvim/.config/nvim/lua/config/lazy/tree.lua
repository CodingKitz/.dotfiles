return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{
			"<C-n>",
			"<cmd>NvimTreeToggle<cr>",
			desc = "Nvim-Tree toggle menu"
		}
	},
	config = function()
		require("nvim-tree").setup({
				actions = {
						open_file = {
								quit_on_open = true,
						}
				}
		})
	end,
}
