vim.g.mapleader = ' ' -- Map leader to spacebar

vim.opt.termguicolors = true -- Enable HEX colors
vim.opt.number = true -- Show line numbers (absolute)

vim.opt.clipboard = 'unnamedplus' -- Copy and paste using system clipboard

vim.opt.hlsearch = false -- Disable sticky search results
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Match case when searching if using any uppercase

vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { desc = 'Write file', noremap = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':x<CR>', { desc = 'Write file and close', noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':bd!<CR>', { desc = 'Close buffer', noremap = true })
vim.api.nvim_set_keymap('n', '<leader>Q', ':qa!<CR>', { desc = 'Close all', noremap = true })

require("config.lazy")
