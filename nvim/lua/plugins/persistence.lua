return {
	"folke/persistence.nvim",
	event = "VeryLazy",
	opts = {
		branch = false,
	},
	keys = {
		{
			"<leader>pl",
			function()
				require("persistence").select()
			end,
			silent = false,
		},
	},
}
