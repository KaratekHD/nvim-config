vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>a', ':BufferPrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':BufferClose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ga', ':!git add "%"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gd', ':!git pull<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>gp', ':!git push<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>gc', ':!git commit<CR>', { noremap = true, silent = false })
