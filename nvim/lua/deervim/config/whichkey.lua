require('which-key').setup({
    spelling = { suggestions = 10 },
    key_labels = {
        ["<cmd>"] = ":",
        ["<cr>"] = "󰌑",
        ["<space>"] = "󱁐",
        ["<tab>"] = "󰌒 ",
    },
    icons = {
        breadcrumb = "󰄾",
        separator = "󰬫 ",
        group = " ",
    },
    window = {
        border = 'rounded',
        position = 'top',
        margin = { 1, 2, 1, 2 },
        padding = { 1, 1, 1, 1 },
        winblend = 40,
    },
    layout = {
        height = { min = 4, max = 10 },
        width = { min = 20, max = 50 },
        spacing = 2,
        align = 'center',
    },
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " },
})
