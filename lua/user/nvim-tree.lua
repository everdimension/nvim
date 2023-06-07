require("nvim-tree").setup({
    view = {
        mappings = {
            list = {
                { key = "h", action = "close_node", },
            }
        }
    },
    renderer = {
        icons = {
            show = {
                file = false,
                folder = false,
            },
            glyphs = {
                folder = {
                    arrow_closed = "▸",
                    arrow_open = "▾",
                }
            }
        }
    },
    update_focused_file = {
        enable = true,
        update_root  = true,
    },
})
