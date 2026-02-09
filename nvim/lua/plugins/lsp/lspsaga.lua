return {
	"nvimdev/lspsaga.nvim",
	opts = {
		finder = {
			keys = {
				toggle_or_open = "<Return>",
			},
		},
		ui = {
			code_action = "",
		},
	},
	keys = {
		{ "<leader>lr", "<Cmd>Lspsaga rename<Return>", silent = true },
		{ "<leader>lc", "<Cmd>Lspsaga code_action<Return>", silent = true },
		{ "<leader>lg", "<Cmd>Lspsaga goto_definition<Return>", silent = true },
		{ "<leader>lG", "<Cmd>Lspsaga peek_definition<Return>", silent = true },
		{ "<leader>lh", "<Cmd>Lspsaga hover_doc<Return>", silent = true },
		{ "<leader>lf", "<Cmd>Lspsaga finder<Return>", silent = true },
		{ "<leader>ln", "<Cmd>Lspsaga diagnostic_jump_next<Return>", silent = true },
		{ "<leader>lp", "<Cmd>Lspsaga diagnostic_jump_prev<Return>", silent = true },
	},
}
