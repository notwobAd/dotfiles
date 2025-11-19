return {
	"mason-org/mason.nvim",
	event = "VeryLazy",
	dependencies = {
		"neovim/nvim-lspconfig",
		"mason-org/mason-lspconfig.nvim",
	},
	opts = {
		ui = {
			border = "rounded",
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)
		local registry = require("mason-registry")

		local config_path = vim.fn.stdpath("config")
		local package_to_config = {}
		for _, file in ipairs(vim.fn.glob(config_path .. "/lua/plugins/lsp/settings/*.lua", false, true)) do
			local basename = vim.fs.basename(file)
			local package_name = string.sub(basename, 0, #basename - 4)
			local success, config = pcall(require, "plugins.lsp.settings." .. package_name)
			if success then
				package_to_config[package_name] = config
			else
				vim.notify("Lsp config not found", "error")
			end
		end

		local notified = false

		local setup = function(package_name, config)
			local success, package = pcall(registry.get_package, package_name)
			if success and not package:is_installed() then
				if not notified then
					vim.notify(
						package_name
							.. " is installing."
							.. " "
							.. "Please make sure nodejs and npm have been installed."
					)
					notified = true
				end
				package:install()
			end

			local nvim_lspconfig_name = require("mason-lspconfig").get_mappings().package_to_lspconfig[package_name]
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			vim.lsp.config(nvim_lspconfig_name, config)
		end

		for package_name, config in pairs(package_to_config) do
			setup(package_name, config)
		end
		require("mason-lspconfig").setup({})

		vim.diagnostic.config({
			virtual_text = true,
			virtual_lines = false,
			update_in_insert = true,
		})
	end,
}
