return {
	"uhs-robert/oasis.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		transparent = true,
	},
	config = function(_, opts)
		require("oasis").setup(opts)
		vim.cmd("colorscheme oasis-lagoon")
	end,
}
