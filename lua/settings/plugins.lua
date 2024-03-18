local map = vim.api.nvim_set_keymap

-- nvim-tree.lua

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup()

map('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- bufferline.nvim

require("bufferline").setup()

map('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
map('n', '<leader>x', ':bd<CR>', { noremap = true, silent = true })

-- comments.nvim

require("Comment").setup()

map('n', '<leader>/', 'gcc', { noremap = true, silent = true })
map('v', '<leader>/', 'gc', { noremap = true, silent = true })

-- treesitter.nvim

require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "rust",
        "typescript",
        "html",
        "css",
        "javascript",
        "lua",
        "python"
    },
    highlight = {
        enable = true
    },
}

-- mason.nvim & lspconfig

require("mason").setup()

require("lspconfig").rust_analyzer.setup {}

-- lualine.nvim

require('lualine').setup()

-- telescope.nvim

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
