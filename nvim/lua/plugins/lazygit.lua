return {
	"kdheepak/lazygit.nvim",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	config = function()
		vim.api.nvim_create_autocmd("TermEnter", {
			callback = function()
				local name = vim.api.nvim_buf_get_name(0)
				if string.find(name, "lazygit") then
					vim.keymap.set("t", "<ESC>", function()
						-- Get the terminal job ID for the current buffer
						local bufnr = vim.api.nvim_get_current_buf()
						local chan = vim.b[bufnr].terminal_job_id
						if chan then
							-- Send the ESC key sequence to the terminal
							-- "\x1b" is the escape character
							vim.api.nvim_chan_send(chan, "\x1b")
						end
						--vim.cmd([[call feedkeys("q")]])
					end, { buffer = true })
					return
				end
			end,
		})
	end,
	keys = {
		{ "<leader>zg", "<Cmd>LazyGit<Return>", desc = "LazyGit" },
	},
}
