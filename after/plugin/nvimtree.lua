-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
--require("nvim-tree").setup()

-- OR setup with some options
local tree = require('nvim-tree')

tree.setup({
    view = {
        adaptive_size = true,
        mappings = {
            list ={
                {key = "s", action = "vsplit"},
            },
        },
    },
    actions = {
        open_file = {
            quit_on_open = false,
            window_picker = {
                enable = false,
            },
        },
    },
    renderer = {
        indent_markers = {
            enable = true,
        },
        icons = {
            git_placement = "sign_column",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    diagnostics = {
        enable = true,
    },
})
