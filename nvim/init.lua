vim.g.mapleader = ' ' -- Map leader to spacebar

vim.opt.colorcolumn = { '80', '100' } -- Vertical lines
vim.opt.cursorline = true -- Horizontal line on cursor position
vim.opt.list = true -- Show invisible characters
vim.opt.listchars = { tab = '» ', trail = '·' } -- Custom tab/space characters
vim.opt.number = true -- Show line numbers (absolute)
vim.opt.scrolloff = 4  -- Keep 4 lines visible above/below cursor when scrolling
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true -- Enable HEX colors
vim.opt.wrap = false

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.clipboard = 'unnamedplus' -- Copy and paste using system clipboard

vim.opt.hlsearch = false -- Disable sticky search results
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Match case when searching if using any uppercase

vim.keymap.set('n', '<c-h>', '<c-w><c-h>', { desc = 'Left panel' })
vim.keymap.set('n', '<c-j>', '<c-w><c-j>', { desc = 'Down panel' })
vim.keymap.set('n', '<c-k>', '<c-w><c-k>', { desc = 'Up panel' })
vim.keymap.set('n', '<c-l>', '<c-w><c-l>', { desc = 'Right panel' })
vim.keymap.set('n', '<leader>Q', ':qa!<CR>', { desc = 'Close all' })
vim.keymap.set('n', '<leader>q', ':bd!<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Write file' })
vim.keymap.set('n', '<leader>x', ':x<CR>', { desc = 'Write file and close' })
vim.keymap.set('n', 'H', ':bprev<CR>', { desc = 'Next buffer', silent = true })
vim.keymap.set('n', 'L', ':bnext<CR>', { desc = 'Previous buffer', silent = true })
vim.keymap.set('n', 'U', ':redo<CR>', { desc = 'Redo' })

require("config.lazy")
