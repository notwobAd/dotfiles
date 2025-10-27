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
			offsets = {
				{
					filetype = "NvimTree",
					-- text = " File Explorer",
					-- text_align = "center",
					separator = true,
				},
			},
		},
	},
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
		-- Move buffer
		{ "<C-h>", ":BufferLineMovePrev<Return>", silent = true },
		{ "<C-l>", ":BufferLineMoveNext<Return>", silent = true },
		-- Move to buffer
		{ "<leader>1", ":BufferLineGoToBuffer 1<Return>", silent = true },
		{ "<leader>2", ":BufferLineGoToBuffer 2<Return>", silent = true },
		{ "<leader>3", ":BufferLineGoToBuffer 3<Return>", silent = true },
		{ "<leader>4", ":BufferLineGoToBuffer 4<Return>", silent = true },
		{ "<leader>5", ":BufferLineGoToBuffer 5<Return>", silent = true },
		{ "<leader>6", ":BufferLineGoToBuffer 6<Return>", silent = true },
		{ "<leader>7", ":BufferLineGoToBuffer 7<Return>", silent = true },
		{ "<leader>8", ":BufferLineGoToBuffer 8<Return>", silent = true },
		{ "<leader>9", ":BufferLineGoToBuffer 9<Return>", silent = true },
	},
	lazy = false,
}
