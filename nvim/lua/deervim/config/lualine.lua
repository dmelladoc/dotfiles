local colors = require("tokyonight.colors").setup()

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
                icon = { '' },
                color = { bg = colors.green, fg = colors.bg_dark },
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
                always_visible = true,
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
            {
                'progress',
                padding = {left = 1, right = 1 },
                color = {
                    bg = colors.red,
                    fg = colors.bg_dark,
                },
                separator = {left = ' ', right = ' ' },
            },
            {
                'location',
                padding = { left = 0, right = 1 },
                color = {
                    bg = colors.yellow,
                    fg = colors.bg_dark,
                },
            },
        },
        lualine_y = {
            {
                'buffers',
                show_filename_only = true, --solo nombre
                hide_filename_extension = true, --no extensiones
                show_modified_status = true,
                mode = 2,
                max_length = 10,
                use_mode_colors = false,
                buffers_color = {
                    active = {
                        fg = colors.bg_dark,
                        bg = colors.magenta,
                    },
                    inactive = {
                        fg = colors.magenta,
                        bg = colors.bg_dark,
                    },
                },
                symbols = {
                    modified = ' ',
                    alternate_file = ' ',
                    directory =  '  ',
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
    extensions = {'lazy', 'neo-tree'},
})
