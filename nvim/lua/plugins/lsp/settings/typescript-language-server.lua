local vue_typescript_plugin_path = vim.fn.stdpath("data")
	.. "/mason/packages/vue-language-server/node_modules/@vue/typescript-plugin"

local vue_plugin = {
	name = "@vue/typescript-plugin",
	location = vue_typescript_plugin_path,
	languages = { "javascript", "typescript", "vue" },
}

return {
	init_options = {
		plugins = {
			vue_plugin,
		},
	},
	filetypes = { "vue" },
}
