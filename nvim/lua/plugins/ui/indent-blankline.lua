return {
	"lukas-reineke/indent-blankline.nvim",
	event = "VeryLazy",
	main = "ibl",
	opts = {
		whitespace = {
			remove_blankline_trail = true,
		},
		exclude = {
			filetypes = {
				"dashboard",
			},
		},
	},
	config = function(_, opts)
		local highlight = {
			"IseriNina",
			"kawaragiMomoka",
			"AwaSubaru",
			"EbizukaTomo",
			"Rupa",
		}

		local hooks = require("ibl.hooks")
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "IseriNina", { fg = "#FF0000" })
			vim.api.nvim_set_hl(0, "kawaragiMomoka", { fg = "#63CDDD" })
			vim.api.nvim_set_hl(0, "AwaSubaru", { fg = "#63D541" })
			vim.api.nvim_set_hl(0, "EbizukaTomo", { fg = "#DE7AA9" })
			vim.api.nvim_set_hl(0, "Rupa", { fg = "#E5C07B" })
		end)

		opts.indent = { highlight = highlight }

		require("ibl").setup(opts)
	end,
}
