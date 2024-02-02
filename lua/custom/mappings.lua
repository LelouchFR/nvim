---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

vim.api.nvim_set_keymap('n', '<C-A-j>', ':m+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A-k>', ':m-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A-S>', [[:%s/\v(<C-R><C-W>)\c/<C-R><C-W>/gc]], { noremap = true })

vim.api.nvim_set_keymap('n', '<M-j>', 'jzz', { noremap = true, silent = true }) 
vim.api.nvim_set_keymap('n', '<M-k>', 'kzz', { noremap = true, silent = true })

return M
