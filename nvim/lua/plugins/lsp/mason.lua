---@param table table The table to deep clone
---@return table # The cloned table
local function clone_deep(table)
	local copy = {}
	for key, value in pairs(table) do
		if type(value) ~= "table" then
			copy[key] = value
		else
			copy[key] = clone_deep(value)
		end
	end

	return copy
end

---@param package_config table The config to load
---@return table # The parsed config
local function load_package_config(package_config)
	local config = clone_deep(package_config)

	if config.enable ~= false then
		config.enable = true
	end

	if type(config.opts) ~= "table" then
		config.opts = {}
	end

	return config
end

return {
	"mason-org/mason.nvim",
	event = "VeryLazy",
	dependencies = {
		"neovim/nvim-lspconfig",
		{ "mason-org/mason-lspconfig.nvim", opts = {
			automatic_enable = false,
		} },
	},
	opts = {
		ui = {
			border = "rounded",
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)

		local function get_packages_config()
			local config_path = vim.fn.stdpath("config")
			local package_to_config = {}
			for _, file in ipairs(vim.fn.glob(config_path .. "/lua/plugins/lsp/settings/*.lua", false, true)) do
				local basename = vim.fs.basename(file)
				local filename = string.sub(basename, 0, #basename - 4)
				local success, package_config = pcall(require, "plugins.lsp.settings." .. filename)
				if success then
					local package_name = package_config[1]
					local cloned_package_config = clone_deep(package_config)
					table.remove(cloned_package_config, 1)
					package_to_config[package_name] = load_package_config(cloned_package_config)
				else
					vim.notify("Lsp config not found", "error")
				end
			end

			return package_to_config
		end

		local function setup(package_name, config)
			local registry = require("mason-registry")
			local success, package = pcall(registry.get_package, package_name)
			if success and not package:is_installed() then
				vim.notify(package_name .. " is installing.")
				package:install()
			end

			local nvim_lspconfig_name = require("mason-lspconfig").get_mappings().package_to_lspconfig[package_name]

			local lsp_config = clone_deep(config.opts)
			lsp_config.capabilities = require("blink.cmp").get_lsp_capabilities(lsp_config.capabilities)

			vim.lsp.config(nvim_lspconfig_name, lsp_config)
			if config.enable then
				vim.lsp.enable(nvim_lspconfig_name)
			end
		end

		local package_to_config = get_packages_config()
		for package_name, config in pairs(package_to_config) do
			setup(package_name, config)
		end

		vim.diagnostic.config({
			virtual_text = true,
			virtual_lines = false,
			update_in_insert = true,
		})
	end,
}
