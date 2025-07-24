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
		{ "<leader>ca", ":CompetiTest add_testcase<Return>", silent = true },
		{ "<leader>cd", ":CompetiTest delete_testcase<Return>", silent = true },
		{ "<leader>ce", ":CompetiTest edit_testcase<Return>", silent = true },
		{ "<leader>cr", ":CompetiTest run<Return>", silent = true },
		{ "<leader>cs", ":CompetiTest show_ui<Return>", silent = true },
	},
}
