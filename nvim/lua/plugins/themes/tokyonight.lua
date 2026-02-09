return {
	"folke/tokyonight.nvim",
	priority = 1000,
	opts = {
		style = "moon",
		styles = {
			sidebars = "transparent",
		},
		transparent = true,
	},
	config = function(_, opts)
		require("tokyonight").setup(opts)
		vim.cmd("colorscheme tokyonight")
	end,
	lazy = true,
}
