return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = { "markdown" },
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	opts = {
		completions = {
			lsp = {
				enabled = true,
			},
		},
		code = {
			disable_background = true,
		},
		overrides = {
			buftype = {
				nofile = {
					enabled = false,
				},
			},
		},
	},
}
