return {
	"stevearc/conform.nvim",
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true })
			end,
			desc = "Format the current buffer",
		}
	},
	opts = {
		formatters_by_ft = {
			python = { "black" },
		}
	},
}
