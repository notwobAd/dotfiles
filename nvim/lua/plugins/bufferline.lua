local opts = { silent = true }

return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"neovim/nvim-lspconfig",
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
	keys = {
		-- Prev tab
		{ "<S-h>", ":BufferLineCyclePrev<Return>", opts },
		{ "<leader>bh", ":BufferLineCyclePrev<Return>", opts },
		{ "<C-PageUp>", ":BufferLineCyclePrev<Return>", opts },
		-- Next tab
		{ "<S-l>", ":BufferLineCycleNext<Return>", opts },
		{ "<leader>bl", ":BufferLineCycleNext<Return>", opts },
		{ "<C-PageDown>", ":BufferLineCycleNext<Return>", opts },
		-- Pick tab
		{ "<S-p>", ":BufferLinePick<Return>", opts },
		{ "<leader>bp", ":BufferLinePick<Return>", opts },
		-- Delete tab
		{ "<leader>bw", ":bdelete!<Return>", opts },
	},
	lazy = false,
}
