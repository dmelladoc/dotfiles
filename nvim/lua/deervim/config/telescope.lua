local actions = require("telescope.actions")

require('telescope').setup({
    defaults ={
        mappings = {
            i = {
                ["<esc>"] = actions.close
            },
        },
    },
    pickers = {
        help_tags = {
            theme = 'ivy',
        },
    },
})

