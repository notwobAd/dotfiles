local ft_to_formatter = {
	lua = { "stylua" },
	cpp = { "clang-format" },
	vue = { "prettier" },
	typescript = { "prettier" },
	typescriptreact = { "prettier" },
	javascript = { "prettier" },
	javascriptreact = { "prettier" },
	yaml = { "prettier" },
	markdown = { "prettier" },
}

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

		for _, packages in pairs(ft_to_formatter) do
			for _, package_name in ipairs(packages) do
				install(package_name)
			end
		end

		require("conform").setup({
			formatters_by_ft = ft_to_formatter,
			format_on_save = {
				timeout_ms = 800,
				lsp_format = "fallback",
			},
			formatters = {
				["clang-format"] = {
					command = "clang-format",
					args = { "--style", "Microsoft" },
				},
			},
		})
	end,
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format()
			end,
			silent = true,
		},
	},
}
