local bo = vim.bo

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "typescript", "javascript", "vue", "yaml" },
	callback = function()
		bo.tabstop = 2
		bo.shiftwidth = 0
	end,
})
