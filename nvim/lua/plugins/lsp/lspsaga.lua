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
		{ "<leader>lr", ":Lspsaga rename<Return>", silent = true },
		{ "<leader>lc", ":Lspsaga code_action<Return>", silent = true },
		{ "<leader>lg", ":Lspsaga goto_definition<Return>", silent = true },
		{ "<leader>lG", ":Lspsaga peek_definition<Return>", silent = true },
		{ "<leader>lh", ":Lspsaga hover_doc<Return>", silent = true },
		{ "<leader>lf", ":Lspsaga finder<Return>", silent = true },
		{ "<leader>ln", ":Lspsaga diagnostic_jump_next<Return>", silent = true },
		{ "<leader>lp", ":Lspsaga diagnostic_jump_prev<Return>", silent = true },
	},
}
