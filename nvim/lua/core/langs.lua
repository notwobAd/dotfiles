local bo = vim.bo

vim.api.nvim_create_autocmd("FileType", {
	pattern = "typescript",
	callback = function()
		bo.tabstop = 2
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "yaml",
	callback = function()
		bo.tabstop = 2
		bo.shiftwidth = 0
	end,
})
