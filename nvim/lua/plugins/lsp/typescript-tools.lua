local vue_typescript_plugin_path = vim.fn.stdpath("data")
	.. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

local vue_plugin = {
	name = "@vue/typescript-plugin",
	path = vue_typescript_plugin_path,
	filetypes = { "typescript", "vue" },
}

local ft = { "typescript", "typescriptreact", "vue" }

local tsservers = { "typescript-language-server", "vue-language-server" }

return {
	"Parsifa1/typescript-tools.nvim",
	ft = ft,
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig", "mason-org/mason.nvim" },
	opts = {
		settings = {
			tsserver_plugins = {
				vue_plugin,
			},
		},
		filetypes = ft,
	},
	config = function(_, opts)
		require("typescript-tools").setup(opts)

		local registry = require("mason-registry")

		for _, tsserver in ipairs(tsservers) do
			local success, package = pcall(registry.get_package, tsserver)
			if success and not package:is_installed() then
				package:install()
			end
		end
	end,
}
