return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup()

		local extra_groups = {
			-- FloatWindow
			"NormalFloat",
			-- BufferLine
			"TabLineFill",
			-- Lspsaga
			"FloatBorder",
			-- Blink
			"BlinkCmpMenu",
			"BlinkCmpDoc",
			"BlinkCmpDocBorder",
		}
		vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, extra_groups)
	end,
}
