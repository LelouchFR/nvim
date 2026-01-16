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

-- luasnip

require("luasnip").setup({
    keep_roots = true,
    link_roots = true,
    link_children = true,
    update_events = "TextChanged,TextChangedI",
    delete_check_events = "TextChanged",
    ext_opts = {
        [require("luasnip.util.types").choiceNode] = {
            active = {
                virt_text = { { "choiceNode", "Comment" } }
            },
        },
    },
    ext_base_prio = 300,
    ext_prio_increase = 1,
    enable_autosnippets = true,
    store_selection_keys = "<Tab>",
    ft_func = function()
        return vim.split(vim.bo.filetype, ".", true)
    end,
})

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })

-- snipml.nvim
-- see project https://github.com/LelouchFR/snipml.vim

vim.opt.runtimepath:append("~/Documents/code/lua/snipml.nvim")
require("snipml").setup({
    default_tag = "div",
    default_count = 1,
    lang_triggers = { "html", "twig", "xml" },
    indent = "    ",
    self_closing_tags = { img = true, input = true, br = true },
    default_tag_content = {
        a = "link",
        button = "submit",
    },
    default_tag_attributes = {
        img = { "src", "alt" },
        a = { "href" },
        label = { "for" },
        input = { "type", "id", "name" },
    },

    enable_repeat = true,
    enable_nesting = true,
    enable_base = true,
})

-- treesitter.nvim

local status_ok, treesitter = pcall(require, 'nvim-treesitter')
if not status_ok then
	vim.notify('nvim-treesitter not loaded !', vim.log.levels.ERROR)
end

treesitter.setup({
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
        "twig",
        "c",
    },
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    },
})

-- mason.nvim & lspconfig

require("mason").setup()

local servers = {
    vue_ls = {},
    pyright = {},
    custom_elements_ls = {},
    ts_ls = {},
    cssls = {},
    asm_lsp = {},
    html = {},
    gopls = {},
    texlab = {},
    twiggy_language_server = {},
    clangd = {},
    intelephense = {},
    tailwindcss = {},
    vls = {},
    rust_analyzer = {
        cmd = { "/home/lelouch/.cargo/bin/rust-analyzer" }
    },
    lua_ls = {
        on_init = function (client)
            if client.workspace_folders then
                local path = client.workspace_folders[1].name
                if path ~= vim.fn.stdpath('config') and (vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc')) then
                    return
                end
            end

            client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                runtime = {
                    version = 'LuaJIT'
                },
                diagnostics = {
                    globals = { 'vim' },
                },
                workspace = {
                    checkThirdParty = false,
                    library = vim.env.VIMRUNTIME,
                },
                telemetry = { enable = false },
            })
        end,
        settings = {
            Lua = {}
        }
    }
}

for server_name, config in pairs(servers) do
    vim.lsp.config[server_name] = config
    vim.lsp.enable(server_name)
end

-- lualine.nvim

require('lualine').setup()

-- telescope.nvim

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fm', builtin.marks, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- nvimp-cmp

local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    window = {},
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if vim.fn.pumvisible() == 1 then
                cmp.mapping.select_next_item()(fallback)
            elseif require("luasnip").expand_or_jumpable() then
                require("luasnip").expand_or_jump()
            else
                cmp.mapping.select_next_item()(fallback)
            end
        end, { "i", "s" }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
    }, {
        { name = 'luasnip' },
        { name = 'buffer' },
    })
})

-- rich presence

require("presence").setup({
    client_id = "530463573986770964",
})

require("hex").setup({
    dump_cmd = 'xxdi.pl',
    assemble_cmd = 'xxdi.pl',
})
