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
            {
                'buffers', 
                mode = 4, 
                max_length = 10,
                use_mode_colors = true,
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
                icon = {" ", color = { fg = 'cyan' }, },
            },
        },
    },
})
