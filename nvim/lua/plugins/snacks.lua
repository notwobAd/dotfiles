return {
	"folke/snacks.nvim",
	opts = {
		image = {
			enabled = true,
		},
		picker = {
			enabled = true,
		},
	},
	keys = {
		{
			"<leader>sp",
			function()
				Snacks.picker.smart()
			end,
			silent = true,
		},
	},
}
