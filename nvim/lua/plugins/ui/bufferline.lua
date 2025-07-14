return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"neovim/nvim-lspconfig",
		"xiyaowong/transparent.nvim",
	},
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(_, _, diagnostics_dict, _)
				local indicator = " "
				for level, number in pairs(diagnostics_dict) do
					local symbol = " "
					if level == "error" then
						symbol = " "
					elseif level == "warning" then
						symbol = " "
					end
					indicator = indicator .. number .. symbol .. " "
				end
				return indicator
			end,
		},
	},
	config = function(_, opts)
		require("bufferline").setup(opts)
		require("transparent").clear_prefix("BufferLine")
	end,
	keys = {
		-- Prev tab
		{ "<S-h>", ":BufferLineCyclePrev<Return>", silent = true },
		{ "<leader>bh", ":BufferLineCyclePrev<Return>", silent = true },
		{ "<C-PageUp>", ":BufferLineCyclePrev<Return>", silent = true },
		-- Next tab
		{ "<S-l>", ":BufferLineCycleNext<Return>", silent = true },
		{ "<leader>bl", ":BufferLineCycleNext<Return>", silent = true },
		{ "<C-PageDown>", ":BufferLineCycleNext<Return>", silent = true },
		-- Pick tab
		{ "<S-p>", ":BufferLinePick<Return>", silent = true },
		{ "<leader>bp", ":BufferLinePick<Return>", silent = true },
		-- Delete tab
		{ "<leader>bw", ":bdelete!<Return>", silent = true },
		{ "<leader>bd", ":bdelete!<Return>", silent = true },
	},
	lazy = false,
}
