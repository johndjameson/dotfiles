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
	{
	'nvim-telescope/telescope.nvim', branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	config = function ()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	end
}
