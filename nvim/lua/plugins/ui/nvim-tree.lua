return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {},
	keys = {
		-- Toggle NvimTree
		{ "<leader>tt", ":NvimTreeToggle<Return>", silent = true },
	},
}
