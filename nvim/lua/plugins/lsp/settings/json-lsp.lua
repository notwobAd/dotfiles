return {
	settings = {
		json = {
			schemas = {
				{
					fileMatch = { "tsconfig*.json" },
					url = "https://www.schemastore.org/tsconfig.json",
				},
				{
					fileMatch = { ".eslintrc", ".eslintrc.json" },
					url = "https://www.schemastore.org/eslintrc.json",
				},
				{
					fileMatch = { ".prettierrc", ".prettierrc.json", ".prettierrc." },
					url = "https://www.schemastore.org/prettierrc.json",
				},
				{
					fileMatch = { "package.json" },
					url = "https://www.schemastore.org/package.json",
				},
			},
			validate = { enable = true },
		},
	},
}
