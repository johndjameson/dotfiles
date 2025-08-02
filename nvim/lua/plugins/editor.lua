return {
	{
		"kylechui/nvim-surround",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				format_on_save = {},
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier", stop_after_first = true },
				},
			})
		end,
	},
}
