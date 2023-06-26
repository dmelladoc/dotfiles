local colors = require("tokyonight.colors")

require("notify").setup({
    background_colour = colors.bg_highlight,
    icons = {
        DEBUG = " ",
        ERROR = " ",
        INFO = " ",
        TRACE = " ",
        WARN = " ",
    },
    level = 2,
    minimum_width = 100,
    render = "compact",
    stages = "slide",
    timeout = 3600,
    top_down = true,
})


