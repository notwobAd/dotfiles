return {
	"mason-org/mason.nvim",
	event = "VeryLazy",
	dependencies = {
		"neovim/nvim-lspconfig",
		"mason-org/mason-lspconfig.nvim",
	},
	opts = {},
	config = function(_, opts)
		require("mason").setup(opts)
		local registry = require("mason-registry")

		local setup = function(package_name, config)
			local success, package = pcall(registry.get_package, package_name)
			if success and not package:is_installed() then
				package:install()
			end

			local lspconfig = require("mason-lspconfig").get_mappings().package_to_lspconfig[package_name]
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			vim.lsp.config(lspconfig, config)
		end

		local packages = {
			["lua-language-server"] = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			},
			["html-lsp"] = {},
			["css-lsp"] = {},
			["typescript-language-server"] = {},
			["emmet-ls"] = {},
			clangd = {},
			["vue-language-server"] = {},
		}
		for package_name, config in pairs(packages) do
			setup(package_name, config)
		end
		require("mason-lspconfig").setup({})

		vim.api.nvim_exec_autocmds("FileType", {})
		vim.diagnostic.config({
			virtual_text = true,
			virtual_lines = false,
			update_in_insert = true,
		})
	end,
}
