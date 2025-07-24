return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		{
			"nvim-telescope/telescope-frecency.nvim",
			version = "*",
		},
		"xiyaowong/transparent.nvim",
	},
	opts = {
		defaults = {
			layout_strategy = "horizontal",
			layout_config = {
				prompt_position = "top",
			},
		},
		extensions = {
			fzf = {
				fuzzy = true,
				overried_generic_sorter = true,
				override_file_sorter = true,
				case_mode = "smart_case",
			},
			frecency = {},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		require("transparent").clear_prefix("Telescope")
	end,
	keys = {
		{ "<leader>ff", ":Telescope find_files<Return>", silent = true },
		{ "<leader>fg", ":Telescope live_grep<Return>", silent = true },
		{ "<leader>fb", ":Telescope buffers<Return>", silent = true },
		{ "<leader>fh", ":Telescope help_tags<Return>", silent = true },
		{ "<leader>fr", ":Telescope frecency workspace=CWD<Return>", silent = true },
	},
}
