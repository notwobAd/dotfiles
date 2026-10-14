return {
	"nvim-telescope/telescope.nvim",
	version = "*",
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
	config = function()
		local telescope = require("telescope")

		local telescopeConfig = require("telescope.config")

		local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
		local find_command = { "rg", "--files", "--hidden" }
		local globs = { "!**/.git/*", "!**/node_modules/*" }

		table.insert(vimgrep_arguments, "--hidden")

		for _, glob in ipairs(globs) do
			table.insert(vimgrep_arguments, "--glob")
			table.insert(vimgrep_arguments, glob)

			table.insert(find_command, "--glob")
			table.insert(find_command, glob)
		end

		local opts = {
			defaults = {
				vimgrep_arguments = vimgrep_arguments,
				layout_strategy = "horizontal",
				layout_config = {
					prompt_position = "top",
				},
			},
			pickers = {
				find_files = {
					find_command = find_command,
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
		}

		telescope.setup(opts)

		require("transparent").clear_prefix("Telescope")
	end,
	keys = {
		{ "<leader>ff", "<Cmd>Telescope find_files<Return>", silent = true },
		{ "<leader>fg", "<Cmd>Telescope live_grep<Return>", silent = true },
		{ "<leader>fb", "<Cmd>Telescope buffers<Return>", silent = true },
		{ "<leader>fh", "<Cmd>Telescope help_tags<Return>", silent = true },
		{ "<leader>fr", "<Cmd>Telescope frecency workspace=CWD<Return>", silent = true },
	},
}
