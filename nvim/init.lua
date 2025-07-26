vim.g.mapleader = " "

vim.opt.number = true -- Show line numbers (absolute)

vim.opt.hlsearch = false -- Disable sticky search results
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Match case when searching if using any uppercase

vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { desc = 'Write file', noremap = true })
