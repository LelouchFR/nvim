# LelouchFR's Neovim Config

## Table of Content:
- [Preview](#preview)
- [Installation](#installation)
- [Plugins](#plugins)
- [Keymaps](#keymaps)

<details>
    <summary><h2 id="preview">Preview</h2></summary>
    <figure>
        <img src="" />
        <figcaption></figcaption>
    </figure>
</details>


<h2 id="installation">Installation</h2>

to install my configuration, you can simply do:

`git clone https://github.com/lelouchfr/nvim.git`

after that, to install the plugins (more infos about the plugin used [here](#Plugins)), go into neovim and run:

`:PlugInstall`


<details>
    <summary><h2 id="plugins">Plugins</h2></summary>
    <ul>
        <li><a href="https://github.com/nvim-tree/nvim-web-devicons">nvim-tree/nvim-web-devicons</a></li>
        <li><a href="https://github.com/nvim-tree/nvim-tree.lua">nvim-tree/nvim-tree.lua</a></li>
        <li><a href="https://github.com/jiangmiao/auto-pairs">jiangmiao/auto-pairs</a></li>
        <li><a href="https://github.com/numToStr/Comment.nvim">numToStr/Comment.nvim</a></li>
        <li><a href="https://github.com/akinsho/bufferline.nvim">akinsho/bufferline.nvim</a></li>
        <li><a href="https://github.com/catppuccin/nvim">catppuccin/nvim</a></li>
        <li><a href="https://github.com/nvim-treesitter/nvim-treesitter">nvim-treesitter/nvim-treesitter</a></li>
        <li><a href="https://github.com/williamboman/mason.nvim">williamboman/mason.nvim</a></li>
        <li><a href="https://github.com/neovim/nvim-lspconfig">neovim/nvim-lspconfig</a></li>
        <li><a href="https://github.com/nvim-lualine/lualine.nvim">nvim-lualine/lualine.nvim</a></li>
        <li><a href="https://github.com/airblade/vim-gitgutter">airblade/vim-gitgutter</a></li>
        <li><a href="https://github.com/nvim-lua/plenary.nvim">nvim-lua/plenary.nvim</a></li>
        <li><a href="https://github.com/nvim-telescope/telescope.nvim">nvim-telescope/telescope.nvim</a></li>
        <li><a href="https://github.com/hrsh7th/cmp-nvim-lsp">hrsh7th/cmp-nvim-lsp</a></li>
        <li><a href="https://github.com/hrsh7th/cmp-buffer">hrsh7th/cmp-buffer</a></li>
        <li><a href="https://github.com/hrsh7th/cmp-path">hrsh7th/cmp-path</a></li>
        <li><a href="https://github.com/hrsh7th/cmp-cmdline">hrsh7th/cmp-cmdline</a></li>
        <li><a href="https://github.com/hrsh7th/nvim-cmp">hrsh7th/nvim-cmp</a></li>
        <li><a href="https://github.com/hrsh7th/cmp-vsnip">hrsh7th/cmp-vsnip</a></li>
        <li><a href="https://github.com/hrsh7th/vim-vsnip">hrsh7th/vim-vsnip</a></li>
        <li><a href="https://github.com/nvimdev/dashboard-nvim">nvimdev/dashboard-nvim</a></li>
    </ul>
</details>

<details>
    <summary><h2 id="keymaps">Keymaps</h2></summary>
    <table>
        <thead>
            <tr>
                <td>normal</td>
                <td>keymap</td>
                <td>running</td>
                <td>description</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>normal</td>
                <td>;</td>
                <td>:</td>
                <td>go in command mode</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;leader&gt;rn</td>
                <td>&lt;cmd&gt;set rnu!&lt;CR&gt;</td>
                <td>toggle relative line numbers</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;leader&gt;n</td>
                <td>&lt;cmd&gt;set nu!&lt;CR&gt;</td>
                <td>toggle line numbers</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;C-c&gt;</td>
                <td>&lt;cmd&gt;%y+<CR&gt;</td>
                <td>copy the whole file</td>
            </tr>
            <tr>
                <td>insert</td>
                <td>jk</td>
                <td>&lt;Esc&gt;</td>
                <td>go in normal mode</td>
            </tr>
            <tr>
                <td>terminal</td>
                <td>jk</td>
                <td>&lt;C-\\&gt;&lt;C-n&gt;</td>
                <td>go in nterm mode</td>
            </tr>
            <tr>
                <td>insert</td>
                <td>&lt;C-h&gt;</td>
                <td>&lt;Left&gt;</td>
                <td>moving in insert mode</td>
            </tr>
            <tr>
                <td>insert</td>
                <td>&lt;C-j&gt;</td>
                <td>&lt;Down&gt;</td>
                <td>moving in insert mode</td>
            </tr>
            <tr>
                <td>insert</td>
                <td>&lt;C-k&gt;</td>
                <td>&lt;Up&gt;</td>
                <td>moving in insert mode</td>
            </tr>
            <tr>
                <td>insert</td>
                <td>&lt;C-l&gt;</td>
                <td>&lt;Right&gt;</td>
                <td>moving in insert mode</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;M-j&gt;</td>
                <td>jzz</td>
                <td>scroll down code by having the cursor in the middle of the buffer</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;M-k&gt;</td>
                <td>kzz</td>
                <td>scroll down code by having the cursor in the middle of the buffer</td>
            </tr>
                <td>normal</td>
                <td>&lt;C-A-j&gt;</td>
                <td>:m+1&lt;CR&gt;==</td>
                <td>move a line down</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;C-A-k&gt;</td>
                <td>:m-2&lt;CR&gt;==</td>
                <td>move a line up</td>
            </tr>
            <tr>
                <td>visual</td>
                <td>"&lt;C-A-j&gt;"</td>
                <td>:'&lt;,'&gt;move '&gt;+1&lt;CR&gt;gv=gv</td>
                <td>move lines down in visual mode</td>
            </tr>
            <tr>
                <td>visual</td>
                <td>&lt;C-A-k&gt;</td>
                <td>:'&lt;,'&gt;move '&lt;-2&lt;CR&gt;gv=gv</td>
                <td>move lines up in visual mode</td>
            </tr>
            <tr>
                <td>visual</td>
                <td>&gt;</td>
                <td>&lt;gv</td>
                <td>unindent</td>
            </tr>
            <tr>
                <td>visual</td>
                <td>&lt;</td>
                <td>&gt;gv</td>
                <td>indent</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;C-n&gt;</td>
                <td>:NvimTreeToggle&lt;CR&gt;</td>
                <td>toggle file tree</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;Tab&gt;</td>
                <td>:BufferLineCycleNext&lt;CR&gt;</td>
                <td>go to next buffer</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;S-Tab&gt;</td>
                <td>:BufferLineCyclePrev&lt;CR&gt;</td>
                <td>go to previous buffer</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;leader&gt;x</td>
                <td>:bd&lt;CR&gt;</td>
                <td>close buffer</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;leader&gt;/</td>
                <td>gcc</td>
                <td>toggle comments</td>
            </tr>
            <tr>
                <td>visual</td>
                <td>&lt;leader&gt;/</td>
                <td>gc</td>
                <td>toggle comments (in visual mode)</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;leader&gt;ff</td>
                <td>builtin.find_files</td>
                <td>telescope files</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;leader&gt;fg</td>
                <td>builtin.live_grep</td>
                <td>telescope grep</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;leader&gt;fb</td>
                <td>builtin.buffers</td>
                <td>telescope buffer</td>
            </tr>
            <tr>
                <td>normal</td>
                <td>&lt;leader&gt;fh</td>
                <td>builtin.help_tags</td>
                <td>telescope help tags</td>
            </tr>
        </tbody>
    </table>
</details>
