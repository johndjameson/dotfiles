return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
				{ "mason-org/mason.nvim", opts = {} },
				"neovim/nvim-lspconfig",
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		branch = 'master',
		lazy = false,
		build = ":TSUpdate",
		config = function ()
			require'nvim-treesitter.configs'.setup({
				ensure_installed = {
					"bash",
					"css",
					"gitcommit",
					"gitignore",
					"html",
					"javascript",
					"json",
					"json5",
					"lua",
					"markdown",
					"markdown_inline",
					"python",
					"rust",
					"toml",
					"tsx",
					"typescript",
					"vim",
				},
				highlight = { enable = true }
			})
		end
	}
}
