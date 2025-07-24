return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"xiyaowong/transparent.nvim",
		{
			"rcarriga/nvim-notify",
			opts = {
				fps = 60,
				background_colour = "#000000",
			},
			config = function(_, opts)
				require("notify").setup(opts)
				require("transparent").clear_prefix("Notify")
			end,
		},
	},
	opts = {
		lsp = {
			signature = {
				auto_open = {
					enabled = false,
				},
			},
		},
	},
}
