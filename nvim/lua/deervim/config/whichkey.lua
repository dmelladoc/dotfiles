require('which-key').setup({
    plugins = {
        spelling = {
            enabled = true,
            suggestions = 10,
        },
    },
    key_labels = {
        ["<cmd>"] = ":",
        ["<cr>"] = "󰌑",
        ["<space>"] = "󱁐",
        ["<tab>"] = "󰌒 ",
    },
    icons = {
        breadcrumb = "󰑃 ",
        separator = "󰮺",
        group = "",
    },
    window = {
        border = 'rounded',
        position = 'top',
        margin = { 1, 0, 1, 0 },
        padding = { 1, 2, 1, 2 },
        winblend = 30,
    },
    layout = {
        height = { min = 4, max = 10 },
        width = { min = 20, max = 50 },
        spacing = 2,
        align = 'center',
    },
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " },
})
