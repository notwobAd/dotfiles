return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	opts = {},
	config = function(_, opts)
		local dashboard = require("alpha.themes.dashboard")
		local logos = vim.fn.glob("~/.config/nvim/logo/*.sh", false, true)

		math.randomseed(os.clock())
		local logo = logos[math.random(#logos)]

		dashboard.section.terminal.command = "cat | bash " .. logo
		dashboard.section.terminal.width = 56
		dashboard.section.terminal.height = 28

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene<Return>"),
			dashboard.button("SPC f f", "󰈞  Find file"),
			dashboard.button("SPC f r", "  Frecency/MRU"),
			dashboard.button("SPC p l", "  Load session"),
			dashboard.button("SPC L", "󰒲  Lazy"),
			dashboard.button("q", "  Exit", "<cmd>qa!<Return>"),
		}

		dashboard.section.footer.val = "怒りも喜びも哀しさも 全部ぶちこめ！"

		dashboard.config.layout = {
			dashboard.section.terminal,
			{ type = "padding", val = 2 },
			dashboard.section.buttons,
			dashboard.section.footer,
		}
		require("alpha").setup(dashboard.config)
		require("alpha.term")
	end,
}
