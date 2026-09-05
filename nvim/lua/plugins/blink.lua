return {
	"saghen/blink.cmp",
	event = "VeryLazy",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"neovim/nvim-lspconfig",
		"onsails/lspkind.nvim",
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
			menu = {
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind" },
					},
					components = {
						kind_icon = {
							text = function(ctx)
								local icon = ctx.kind_icon
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
									if dev_icon then
										icon = dev_icon
									end
								else
									icon = require("lspkind").symbolic(ctx.kind, {
										mode = "symbol",
									})
								end

								return icon .. ctx.icon_gap
							end,
						},
					},
				},
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
