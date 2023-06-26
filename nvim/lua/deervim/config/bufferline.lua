local bufferline = require("bufferline")

require("bufferline").setup({
    options = {
        style_preset = {bufferline.style_preset.no_italic, bufferline.style_preset.minimal},
        numbers = 'ordinal',
        buffer_close_icon ='',
        close_icon = '󰅘',
        modified_icon = '󱞂',
        left_trunc_marker = '󰳞',
        right_trunc_marker = '󰳠',
        diagnostics = "nvim_lsp",
        offsets = {
            filetype = "neo-tree",
            text = "Neo-tree",
            text_align = 'center',
            separator = true,
        },
        get_element_icon = function(element)
            local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
            return icon, hl
        end,
        color_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        separator_style = "slope",
        always_show_bufferline = true,
        sort_by = 'insert_at_end',
    },
})


