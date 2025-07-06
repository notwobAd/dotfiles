local opts = {
	silent = true,
}

return {
	"nvimdev/lspsaga.nvim",
	cmd = "Lspsaga",
	opts = {
		finder = {
			keys = {
				toggle_or_open = "<Return>",
			},
		},
	},
	keys = {
		{ "<leader>lr", "<Cmd>:Lspsaga rename<Return>", opts },
		{ "<leader>lc", "<Cmd>:Lspsaga code_action<Return>", opts },
		{ "<leader>lg", "<Cmd>:Lspsaga goto_definition<Return>", opts },
		{ "<leader>lh", "<Cmd>:Lspsaga hover_doc<Return>", opts },
		{ "<leader>lF", "<Cmd>:Lspsaga finder<Return>", opts },
		{ "<leader>ln", "<Cmd>:Lspsaga diagnostic_jump_next<Return>", opts },
		{ "<leader>lp", "<Cmd>:Lspsaga diagnostic_jump_prev<Return>", opts },
	},
}
