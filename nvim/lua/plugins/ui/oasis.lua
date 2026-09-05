return {
	"uhs-robert/oasis.nvim",
	lazy = false,
	priority = 1000,
	version = "6.0.0",
	opts = {
		transparent = true,
	},
	config = function(_, opts)
		require("oasis").setup(opts)
		vim.cmd.colorscheme("oasis-lagoon")
	end,
}
