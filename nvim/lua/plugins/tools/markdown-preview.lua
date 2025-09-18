return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && npm install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
	keys = {
		{ "<leader>me", ":MarkdownPreview<Return>", silent = true },
		{ "<leader>md", ":MarkdownPreviewStop<Return>", silent = true },
		{ "<leader>mt", ":MarkdownPreviewToggle<Return>", silent = true },
	},
}
