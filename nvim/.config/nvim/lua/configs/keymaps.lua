-- Use <space> as <leader>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear search with <esc>
vim.keymap.set({'i', 'n'}, '<esc>', '<cmd>noh<cr><esc>', { desc = '' })

-- Fix annoying cursor movement on <space>
vim.keymap.set('', '<space><space>', '<nop>', { noremap = true, silent = true }) 

-- Use <ctrl> + hjkl for navigation in insert and command modes
vim.keymap.set({'i', 'c'}, '<C-j>', '<Down>',  { desc = '' })
vim.keymap.set({'i', 'c'}, '<C-k>', '<Up>',    { desc = '' })
vim.keymap.set({'i', 'c'}, '<C-l>', '<Right>', { desc = '' })
vim.keymap.set({'i', 'c'}, '<C-h>', '<Left>',  { desc = '' })

-- Use <leader>w to manage windows
vim.keymap.set('n', '<leader>wh', '<C-w>h', { desc = 'Go to the left window' })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { desc = 'Go to the down window' })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { desc = 'Go to the up window' })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { desc = 'Go to the right window' })
vim.keymap.set('n', '<leader>ww', '<C-w>w', { desc = 'Switch windows' })
vim.keymap.set('n', '<leader>wq', '<C-w>q', { desc = 'Quit a window' })
vim.keymap.set('n', '<leader>w+', '<C-w>+', { desc = 'Increase height' })
vim.keymap.set('n', '<leader>w-', '<C-w>-', { desc = 'Decrease height' })
vim.keymap.set('n', '<leader>w>', '<C-w>>', { desc = 'Increase width' })
vim.keymap.set('n', '<leader>w<', '<C-w><', { desc = 'Decrease width' })
vim.keymap.set('n', '<leader>w_', '<C-w>_', { desc = 'Max out the height' })
vim.keymap.set('n', '<leader>w|', '<C-w>|', { desc = 'Max out the width ' })
vim.keymap.set('n', '<leader>w=', '<C-w>=', { desc = 'Equally high and wide' })
vim.keymap.set('n', '<leader>ws', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>wx', '<C-w>x', { desc = 'Swap current with next' })
vim.keymap.set('n', '<leader>wo', '<C-w>o', { desc = 'Close all other windows' })
vim.keymap.set('n', '<leader>wT', '<C-w>T', { desc = 'Break out into a new tab' })

-- Use <leader>b to manage buffers 
vim.keymap.set('n', '<leader>bn', '<cmd>bnext<cr>',	{ desc = 'Switch to the next buffer' })
vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<cr>', { desc = 'Switch to the prev buffer' })
vim.keymap.set('n', '<leader>bo', '<cmd>e #<cr>',	{ desc = 'Switch to the other buffer'})

