local Plug = vim.fn["plug#"]

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')
Plug('jiangmiao/auto-pairs')
Plug('numToStr/Comment.nvim')
Plug('akinsho/bufferline.nvim', { tag = '*' })
Plug('catppuccin/nvim', { as = 'catppuccin' })
Plug('nvim-treesitter/nvim-treesitter')
Plug('williamboman/mason.nvim')
Plug('neovim/nvim-lspconfig')
Plug('nvim-lualine/lualine.nvim')
Plug('airblade/vim-gitgutter')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.6' })

vim.call('plug#end')
