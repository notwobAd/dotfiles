local function get_open_win_config()
	local screen_width = vim.opt.columns:get()
	local screen_height = vim.opt.lines:get()

	local tree_width = 90
	local tree_height = math.max(27, math.floor(tree_width * screen_height / screen_width))

	return {
		relative = "editor",
		border = "rounded",
		width = tree_width,
		height = tree_height,
		row = (screen_height - tree_height) / 2,
		col = (screen_width - tree_width) / 2,
	}
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		git = {
			ignore = false,
		},
		view = {
			float = {
				enable = true,
				open_win_config = get_open_win_config,
			},
		},
	},
	keys = {
		-- Toggle NvimTree
		{ "<leader>tt", "<Cmd>NvimTreeToggle<Return>", silent = true },
	},
}
