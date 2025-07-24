local competitest = {
	filetypes = { "CompetiTest" },
	sections = {
		lualine_a = {
			function()
				return vim.b.competitest_title
			end,
		},
	},
	inactive_sections = {
		lualine_a = {
			function()
				return vim.b.competitest_title
			end,
		},
	},
}
return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"folke/noice.nvim",
	},
	opts = {
		options = {
			icons_enabled = true,
			theme = "auto",
			disabled_filetypes = {
				"dashboard",
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = {
				{ require("noice").api.statusline.mode.get, cond = require("noice").api.statusline.mode.has },
				"filetype",
				"encoding",
			},
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		extensions = { "nvim-tree", competitest },
	},
}
