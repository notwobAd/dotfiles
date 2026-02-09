return {
	"xeluxee/competitest.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	opts = {
		testcases_use_single_file = true,
		maximum_time = 3000,
		runner_ui = {
			interface = "split",
		},
	},
	keys = {
		{ "<leader>ca", "<Cmd>CompetiTest add_testcase<Return>", silent = true },
		{ "<leader>cd", "<Cmd>CompetiTest delete_testcase<Return>", silent = true },
		{ "<leader>ce", "<Cmd>CompetiTest edit_testcase<Return>", silent = true },
		{ "<leader>cr", "<Cmd>CompetiTest run<Return>", silent = true },
		{ "<leader>cs", "<Cmd>CompetiTest show_ui<Return>", silent = true },
	},
}
