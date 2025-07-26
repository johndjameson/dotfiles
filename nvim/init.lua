vim.g.mapleader = " "

vim.opt.number = true

vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { desc = 'Write file', noremap = true })
