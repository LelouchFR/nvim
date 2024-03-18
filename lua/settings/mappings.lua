local map = vim.api.nvim_set_keymap

map('n', ';', ':', { noremap = true, silent = true })

map('i', 'jk', '<Esc>', { noremap = true, silent = true })
map('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })

map('i', '<C-h>', '<Left>', { noremap = true, silent = true })
map('i', '<C-j>', '<Down>', { noremap = true, silent = true })
map('i', '<C-k>', '<Up>', { noremap = true, silent = true })
map('i', '<C-l>', '<Right>', { noremap = true, silent = true })

map('n', '<C-A-j>', ':m+1<CR>==', { noremap = true, silent = true })
map('n', '<C-A-k>', ':m-2<CR>==', { noremap = true, silent = true })

map('n', '<M-j>', 'jzz', { noremap = true, silent = true })
map('n', '<M-k>', 'kzz', { noremap = true, silent = true })

map('x', '<C-A-j>', ":'<,'>move '>+1<CR>gv=gv", { noremap = true, silent = true })
map('x', '<C-A-k>', ":'<,'>move '<-2<CR>gv=gv", { noremap = true, silent = true })

map('v', '>', '>gv', { noremap = true, silent = true })
map('v', '<', '<gv', { noremap = true, silent = true })
