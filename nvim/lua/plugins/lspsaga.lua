local opts = {
	silent = true,
}

return {
	"nvimdev/lspsaga.nvim",
	opts = {
		finder = {
			keys = {
				toggle_or_open = "<Return>",
			},
		},
	},
	keys = {
		{ "<leader>lr", ":Lspsaga rename<Return>", opts },
		{ "<leader>lc", ":Lspsaga code_action<Return>", opts },
		{ "<leader>lg", ":Lspsaga goto_definition<Return>", opts },
		{ "<leader>lh", ":Lspsaga hover_doc<Return>", opts },
		{ "<leader>lF", ":Lspsaga finder<Return>", opts },
		{ "<leader>ln", ":Lspsaga diagnostic_jump_next<Return>", opts },
		{ "<leader>lp", ":Lspsaga diagnostic_jump_prev<Return>", opts },
	},
}
