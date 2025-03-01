require("catppuccin").setup {
    color_overrides = {
        mocha = {
            base = "#181818",
            mantle = "#181818",
            crust = "#181818",
        },
        frappe = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
        },
        latte = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
        },
    }
}

vim.cmd('colorscheme catppuccin-mocha')
