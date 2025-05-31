return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<C-e>",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Harpoon toggle quick menu list"
		},
		{
			"<leader>a",
			function ()
				local harpoon = require("harpoon")
				harpoon:list():add()
			end,
			desc = "Harpoon add current file to quick menu list"
		},
		{
			"<C-n>",
			function ()
				local harpoon = require("harpoon")
				harpoon:list():next()
			end,
			desc = "Harpoon next quick menu list"
		},
		{
			"<C-p>",
			function ()
				local harpoon = require("harpoon")
				harpoon:list():prev()
			end,
			desc = "Harpoon prev quick menu list"
		},
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()
	end
}
