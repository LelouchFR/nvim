vim.g.mapleader = ' '
vim.cmd('autocmd BufRead,BufNewFile *.handlebars set filetype=html')

require('vim-plug.plugins')
require('settings.plugins')
require('settings.mappings')
require('settings.global_settings')
require('settings.colorschemes')
