local library = vim.api.nvim_get_runtime_file("", true)
vim.list_extend(library, { "/usr/share/hypr/stubs" })

return {
	"lua-language-server",
	opts = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = library,
				},
			},
		},
	},
}
