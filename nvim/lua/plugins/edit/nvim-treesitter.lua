local ensure_installed = {
	"c",
	"lua",
	"vim",
	"vimdoc",
	"query",
	"markdown",
	"markdown_inline",
	"cpp",
	"typescript",
	"tsx",
	"javascript",
	"vue",
	"html",
	"css",
	"toml",
	"yaml",
}

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {},
	config = function(_, opts)
		local nvim_treesitter = require("nvim-treesitter")
		nvim_treesitter.setup(opts)
		nvim_treesitter.install(ensure_installed)
	end,
}
