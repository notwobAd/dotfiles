return {
	"stevearc/conform.nvim",
	dependencies = {
		"mason-org/mason.nvim",
	},
	event = "VeryLazy",
	config = function()
		local registry = require("mason-registry")

		local install = function(package_name)
			local success, package = pcall(registry.get_package, package_name)
			if success and not package:is_installed() then
				package:install()
			end
		end

		local ft_to_formatter = {
			lua = { "stylua" },
			cpp = { "clang-format" },
			vue = { "prettier" },
			typescript = { "prettier" },
			javascript = { "prettier" },
		}

		for _, package_name in pairs(ft_to_formatter) do
			install(package_name)
		end

		require("conform").setup({
			formatters_by_ft = ft_to_formatter,
			format_on_save = {
				timeout_ms = 800,
				lsp_format = "fallback",
			},
		})
	end,
	keys = {
		{ "<leader>lf", "<Cmd>:lua require('conform').format()<Return>", silent = true },
	},
}
