return {
	'lewis6991/gitsigns.nvim',
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function ()
			require("bufferline").setup({
				highlights = {
					buffer_selected = {
						italic = false,
					},
				},
			})
		end,
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function ()
			require('lualine').setup({
				options = { theme = 'solarized_dark' },
			})
		end,
	},
}
