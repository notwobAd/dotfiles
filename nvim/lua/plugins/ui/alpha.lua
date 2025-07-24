return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	opts = {},
	config = function(_, opts)
		local dashboard = require("alpha.themes.dashboard")
		local logos = {
			"angry1.sh",
			"byebye2.sh",
			"laugh.sh",
			"silent.sh",
			"zzz.sh",
			"angry2.sh",
			"cry1.sh",
			"haha.sh",
			"love.sh",
			"thanks.sh",
			"angry3.sh",
			"cry2.sh",
			"ha.sh",
			"ok.sh",
			"toge.sh",
			"bad.sh",
			"dame.sh",
			"'ha?.sh'",
			"rock.sh",
			"wink.sh",
			"byebye1.sh",
			"drive.sh",
			"hey.sh",
			"shy.sh",
			"yee.sh",
		}
		math.randomseed(os.clock())
		local logo = logos[math.random(#logos)]

		dashboard.section.terminal.command = "cat | bash ~/.config/nvim/logo/" .. logo
		dashboard.section.terminal.width = 56
		dashboard.section.terminal.height = 28

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene<Return>"),
			dashboard.button("SPC f f", "󰈞  Find file"),
			dashboard.button("SPC f r", "  Frecency/MRU"),
			dashboard.button("SPC p l", "  Load session"),
			dashboard.button("SPC L", "󰒲  Lazy"),
			dashboard.button("q", "  Exit", "<cmd>q<Return>"),
		}

		dashboard.section.footer.val = "怒りも喜びも哀しさも 全部ぶちこめ！"

		dashboard.config.layout = {
			-- { type = "padding", val = 2 },
			dashboard.section.terminal,
			{ type = "padding", val = 2 },
			dashboard.section.buttons,
			dashboard.section.footer,
		}
		require("alpha").setup(dashboard.config)
		require("alpha.term")
	end,
}
