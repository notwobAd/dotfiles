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
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = ensure_installed,
		sync_install = false,
		auto_install = false,
		highlight = {
			enable = true,
		},
	},
}
