local map = vim.api.nvim_set_keymap

local modes = {
    insert = 'i',
    normal = 'n',
    visual = 'v',
    terminal = 't'
}

local mappings = {
    {
        mode = modes.normal,
        map = ';',
        res = ':'
    },
    {
        mode = modes.normal,
        map = '<leader>rn',
        res = '<cmd>set rnu!<CR>'
    },
    {
        mode = modes.normal,
        map = '<leader>n',
        res = '<cmd>set nu!<CR>'
    },
    {
        mode = modes.normal,
        map = '<C-c>',
        res = '<cmd>%y+<CR>'
    },
    ----------------------------------
    --                              --
    -- enter into normal/nterm mode --
    --                              --
    ----------------------------------
    {
        mode = modes.insert,
        map = 'jk',
        res = '<Esc>'
    },
    {
        mode = modes.terminal,
        map = 'jk',
        res = '<C-\\><C-n>'
    },
    ---------------------------
    --                       --
    -- moving in insert mode --
    --                       --
    ---------------------------
    {
        mode = modes.insert,
        map = '<C-h>',
        res = '<Left>'
    },
    {
        mode = modes.insert,
        map = '<C-j>',
        res = '<Down>'
    },
    {
        mode = modes.insert,
        map = '<C-k>',
        res = '<Up>'
    },
    {
        mode = modes.insert,
        map = '<C-l>',
        res = '<Right>'
    },
    ----------------------------------------------
    --                                          --
    --   centering cursor while going up/down   --
    --                                          --
    ----------------------------------------------
    {
        mode = modes.normal,
        map = '<M-j>',
        res = 'jzz'
    },
    {
        mode = modes.normal,
        map = '<M-k>',
        res = 'kzz'
    },
    ---------------------------
    --                       --
    --   moving line/lines   --
    --                       --
    ---------------------------
    {
        mode = modes.normal,
        map = '<C-A-j>',
        res = ':m+1<CR>=='
    },
    {
        mode = modes.normal,
        map = '<C-A-k>',
        res = ':m-2<CR>=='
    },
    {
        mode = 'x',
        map = '<C-A-j>',
        res = ":'<,'>move '>+1<CR>gv=gv"
    },
    {
        mode = 'x',
        map = '<C-A-k>',
        res = ":'<,'>move '<-2<CR>gv=gv"
    },
    --------------------------
    --                      --
    -- indent/unindent text --
    --                      --
    --------------------------
    {
        mode = modes.visual,
        map = '>',
        res = '>gv'
    },
    {
        mode = modes.visual,
        map = '<',
        res = '<gv'
    },
}

for _, mapping in ipairs(mappings) do
    map(mapping.mode, mapping.map, mapping.res, { noremap = true, silent = true })
end
