local wk = require("which-key")
local telbuild = require('telescope.builtin')

vim.keymap.set('n', '<c-h>', ':wincmd h<cr>', { desc = " Ventana" })
vim.keymap.set('n', '<c-j>', ':wincmd j<cr>', { desc = " Ventana" })
vim.keymap.set('n', '<c-k>', ':wincmd k<cr>', { desc = " Ventana" })
vim.keymap.set('n', '<c-l>', ':wincmd l<cr>', { desc = " Ventana" })


--LEADER
wk.register({
    -- Buffers
    b = {
        name = " Buffers",
        ["["] = { "<cmd>BufferLineCyclePrev<cr>", " Buffer"},
        ["]"] = { "<cmd>BufferLineCycleNext<cr>", " Buffer"},
        v = { telbuild.buffers, "Ver Buffers" },
        d = { "<cmd>bdelete!<cr>", "Cerrar Buffer" },
    },
    -- completion (copilot)
    c = {
        name = " Copilot",
        e = { "<cmd>Copilot enable<cr>", "Habilitar" },
        s = { "<cmd>Copilot status<cr>", "Status" },
        p = { "<cmd>Copilot panel<cr>", "Panel" },
    },
    -- Files
    f = {
        name = " Archivos",
        n = { "<cmd>enew<cr>", " Nuevo" },
        d = { telbuild.oldfiles, "󰮳 Old"},
        o = { telbuild.find_files, "󰮗 Buscar"},
        e = { "<cmd>Neotree position=left toggle<cr>", "󱏒 NeoTree" },
    },
    -- Git
    g = {
        name = " Git",
        s = {telbuild.git_status, "Status"},
    },
    -- Help
    h = { telbuild.help_tags, "󰘥 Ayuda" },
    -- N
    n = {
        name = "󰰔 ",
        f = { "<cmd>enew<cr>", " Nuevo" },
        -- neotree
        t = {"<cmd>Neotree position=float toggle<cr>", "󱏒 NeoTree" },
    },
    -- Package managers
    l = {
        name = " Managers",
        m = {"<cmd>Mason<cr>", "Abrir Mason" },
        l = {"<cmd>Lazy<cr>", "Abrir Lazy" },
    },
    -- T
    t = {
        name = "󰰦 ",
        -- Telescope
        l = {
            name = " Telescope",
            c = { telbuild.colorscheme, "󰸌 Colores" },
            f = { telbuild.find_files, "󰮗 Buscar"},
            g = { telbuild.live_grep, "Grep" },
            h = { telbuild.help_tags, "󰘥 Ayuda" },
            n = { "<cmd>Telescope notify<cr>", " Notificaciones" },
            o = { telbuild.oldfiles, "󰮳 Old"},
            s = {telbuild.git_status, " Status"},
            v = { telbuild.buffers, " Buffers" },
        },
        -- Terminal
        t = {
            name = " Terminal",
            b = {"<cmd>lua _BOTTOM_TOGGLE()<cr>", "  btm"},
            h = {"<cmd>ToggleTerm size=10 direction=horizontal<cr>", "  Horizontal"},
            f = {"<cmd>ToggleTerm direction=float<cr>", "  Float"},
            p = {"<cmd>lua _PYTHON_TOGGLE()<cr>", " Python"},
            v = {"<cmd>ToggleTerm size=10 direction=vertical<cr>", "  Vertical"},
        },
    },
    -- Vim Generals
    v = {
        name = " Vim",
        q = {"<cmd>q!<cr>","󰗼 Salir"},
        w = { "<cmd>w!<cr>", " Guardar" },
        s = { "<cmd>set spell!<cr>", "󰓆 Corrector" },
    },
    -- Window
    w = {
        name = " Ventanas",
        h = { ":wincmd h<cr>",  " Ventana" },
        j = { ":wincmd j<cr>",  " Ventana" },
        k = { ":wincmd k<cr>",  " Ventana" },
        l = { ":wincmd l<cr>",  " Ventana" },
        c = { "<cmd>close<cr>", "󰖭 Cerrar" },
        n = { "<cmd>new<cr>", " Nueva" },
        v = { "<cmd>vsplit<cr>", " Split" },
        s = { "<cmd>split<cr>", " Split" },
        r = { ":wincmd r<cr>", " Rotar" },
        ["R"] = { ":wincmd R<cr>", " Rotar" },
    },
    -- 
}, { prefix = "<leader>" })
