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
	"typescriptreact",
	"tsx",
	"javascript",
	"javascriptreact",
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
		nvim_treesitter.install(nvim_treesitter.get_available(ensure_installed))

		vim.api.nvim_create_autocmd("FileType", {
			pattern = ensure_installed,
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
