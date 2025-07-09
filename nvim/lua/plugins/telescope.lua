local opts = {
	silent = true,
}
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
	},
	opts = {
		extensions = {
			fzf = {
				fuzzy = true,
				overried_generic_sorter = true,
				override_file_sorter = true,
				case_mode = "smart_case",
			},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("fzf")
	end,
	keys = {
		{ "<leader>ff", ":Telescope find_files<Return>", opts },
		{ "<leader>fg", ":Telescope live_grep<Return>", opts },
		{ "<leader>fb", ":Telescope buffers<Return>", opts },
		{ "<leader>fh", ":Telescope help_tags<Return>", opts },
	},
}
