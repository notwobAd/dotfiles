return {
	"folke/persistence.nvim",
	event = "BufReadPre",
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
