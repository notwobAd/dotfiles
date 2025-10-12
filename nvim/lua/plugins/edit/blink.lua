return {
	"saghen/blink.cmp",
	event = "VeryLazy",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"neovim/nvim-lspconfig",
	},
	version = "1.*",
	opts = {
		enabled = function()
			return not vim.tbl_contains({ "cpp" }, vim.bo.filetype)
		end,
		keymap = {
			preset = "super-tab",
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = {
				auto_show = true,
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		cmdline = {
			sources = function()
				local cmd_type = vim.fn.getcmdtype()
				if cmd_type == "/" then
					return { "buffer" }
				elseif cmd_type == ":" then
					return { "cmdline" }
				end
				return {}
			end,
			keymap = {
				preset = "inherit",
			},
			completion = {
				menu = {
					auto_show = true,
				},
			},
		},
	},
}
