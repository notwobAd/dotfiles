return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		git = {
			ignore = false,
		},
	},
	keys = {
		-- Toggle NvimTree
		{ "<leader>tt", "<Cmd>NvimTreeToggle<Return>", silent = true },
	},
}
