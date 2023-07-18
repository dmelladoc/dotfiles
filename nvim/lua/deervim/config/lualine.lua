local colors = require("tokyonight.colors")

require("lualine").setup({
    options = {
        icons_enabled = true,
        theme = 'tokyonight',
        component_separators = { left = " ", right = " " },
        section_separators = { left = ' ', right = ' ' },
    },
    -- secciones de la barra
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            {
                'branch',
                icon = { '', color = { fg = 'green' } },
            },
            {
                'diff',
                symbols = {
                    added = " ",
                    modified = " ",
                    removed = " ",
                },
            },
            {
                'diagnostics',
                symbols = {
                    error = ' ',
                    warn = ' ',
                    info = ' ',
                    hint = ' ',
                },
            },
        },
        lualine_c = {
            {
                'filetype',
                colored = true,
                icon_only = true,
                padding = 1,
                icon = {align = 'center' },
            },
            {
                'filename',
                file_status = true,
                path = 1,
                symbols = {
                    modified = '󱇨 ',
                    readonly = '󱀰 ',
                    unnamed = '󱀶 ',
                    newfile = '󰻭 ',
                },
            },
            'filesize',
        },
        lualine_x = {
            { 'progress', padding = 1 },
            { 'location', padding = 1 },
        },
        lualine_y = {
            --{
            --    'buffers',
            --    show_filename_only = true, --solo nombre
            --    hide_filename_extension = true, --no extensiones
            --    show_modified_status = true,
            --    mode = 4,
            --    max_length = 10,
            --    use_mode_colors = false,
            --    symbols = {
            --        modified = ' ',
            --        alternate_file = ' ',
            --        directory =  '  ',
            --    },
            --},
            {
                'tabs',
                max_length = 8,
                mode = 0,
                tabs_color = {
                    active = { fg = colors.red1, bg = colors.bg },
                    inactive = { fg = colors.blue1, bg = colors.bg_dark },
                },
            },
        },
        lualine_z = {
            {
                require("lazy.status").updates,
                cond = require("lazy.status").has_updates,
                icon = {" ", color = { fg = colors.cyan }, },
            },
        },
    },
})
