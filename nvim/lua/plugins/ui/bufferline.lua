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
		{ "<S-h>", "<Cmd>BufferLineCyclePrev<Return>", silent = true },
		{ "<leader>bh", "<Cmd>BufferLineCyclePrev<Return>", silent = true },
		{ "<C-PageUp>", "<Cmd>BufferLineCyclePrev<Return>", silent = true },
		-- Next tab
		{ "<S-l>", "<Cmd>BufferLineCycleNext<Return>", silent = true },
		{ "<leader>bl", "<Cmd>BufferLineCycleNext<Return>", silent = true },
		{ "<C-PageDown>", "<Cmd>BufferLineCycleNext<Return>", silent = true },
		-- Pick tab
		{ "<S-p>", "<Cmd>BufferLinePick<Return>", silent = true },
		{ "<leader>bp", "<Cmd>BufferLinePick<Return>", silent = true },
		-- Delete tab
		{ "<leader>bw", "<Cmd>bdelete!<Return>", silent = true },
		{ "<leader>bd", "<Cmd>bdelete!<Return>", silent = true },
		-- Move buffer
		{ "<C-h>", "<Cmd>BufferLineMovePrev<Return>", silent = true },
		{ "<C-l>", "<Cmd>BufferLineMoveNext<Return>", silent = true },
		-- Move to buffer
		{ "<leader>1", "<Cmd>BufferLineGoToBuffer 1<Return>", silent = true },
		{ "<leader>2", "<Cmd>BufferLineGoToBuffer 2<Return>", silent = true },
		{ "<leader>3", "<Cmd>BufferLineGoToBuffer 3<Return>", silent = true },
		{ "<leader>4", "<Cmd>BufferLineGoToBuffer 4<Return>", silent = true },
		{ "<leader>5", "<Cmd>BufferLineGoToBuffer 5<Return>", silent = true },
		{ "<leader>6", "<Cmd>BufferLineGoToBuffer 6<Return>", silent = true },
		{ "<leader>7", "<Cmd>BufferLineGoToBuffer 7<Return>", silent = true },
		{ "<leader>8", "<Cmd>BufferLineGoToBuffer 8<Return>", silent = true },
		{ "<leader>9", "<Cmd>BufferLineGoToBuffer 9<Return>", silent = true },
	},
	lazy = false,
}
