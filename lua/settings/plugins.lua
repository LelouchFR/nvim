vim.g.mapleader = ' '
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
        "python",
        "tsx",
        "asm",
        "go",
        "sql",
        "markdown",
        "php",
    },
    highlight = {
        enable = true
    },
}

-- mason.nvim & lspconfig

require("mason").setup()

require('lspconfig').rust_analyzer.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").custom_elements_ls.setup {}
require("lspconfig").ts_ls.setup {}
require("lspconfig").cssls.setup {}
require('lspconfig').asm_lsp.setup {}
require('lspconfig').html.setup {}
require('lspconfig').gopls.setup {}
require('lspconfig').texlab.setup {}

-- lualine.nvim

require('lualine').setup()

-- telescope.nvim

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- nvimp-cmp

local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    window = {},
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
	['<Tab>'] = cmp.mapping.select_next_item(),
	['<S-Tab>'] = cmp.mapping.select_prev_item(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
    }, {
        { name = 'buffer' },
    })
})

-- rich presence

require("presence").setup({})

require("hex").setup({
    dump_cmd = 'xxdi.pl',
    assemble_cmd = 'xxdi.pl',
})
