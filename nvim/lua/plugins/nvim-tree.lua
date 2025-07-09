return {
	"nvim-tree/nvim-tree.lua",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {},
	config = function(_, opts)
		require("nvim-tree").setup(opts)
		vim.cmd("NvimTreeOpen")
	end,
	keys = {
		-- Toggle NvimTree
		{ "<leader>tg", "<Cmd>:NvimTreeToggle<Return>", silent = true },
	},
}
