plugins = {
    'nvim-tree/nvim-web-devicons',
    'nvim-tree/nvim-tree.lua',
    'jiangmiao/auto-pairs',
    'numToStr/Comment.nvim',
    { 'akinsho/bufferline.nvim', { tag = '*' } },
    { 'catppuccin/nvim', { as = 'catppuccin' } },
    'nvim-treesitter/nvim-treesitter',
    'williamboman/mason.nvim',
    'neovim/nvim-lspconfig',
    'nvim-lualine/lualine.nvim',
    'airblade/vim-gitgutter',
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope.nvim', { tag = '0.1.6' } },
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'andweeb/presence.nvim',
    'RaafatTurki/hex.nvim',
}


local Plug = vim.fn["plug#"]
vim.call('plug#begin', '~/.config/nvim/plugged')
for _, plugin in ipairs(plugins) do
    if type(plugin) == "string" then
        Plug(plugin)
    elseif type(plugin) == "table" then
        Plug(plugin[1], plugin[2])
    end
end
vim.call('plug#end')
