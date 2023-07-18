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
        name = "Buffers",
        ["["] = { "<cmd>BufferLineCyclePrev<cr>", " Buffer"},
        ["]"] = { "<cmd>BufferLineCycleNext<cr>", " Buffer"},
        v = { telbuild.buffers, "Ver Buffers" },
        d = { "<cmd>bdelete!", "Cerrar Buffer" },
    },
    -- Files
    f = {
        name = "Archivos",
        f = { telbuild.find_files, "Buscar Archivos"},
        o = { telbuild.oldfiles, "Archivos Viejos"},
        e = { "<cmd>Neotree position=left toggle<cr>", "󱏒  NeoTree" },
    },
    -- Git
    g = {
        name = "Git",
        s = {telbuild.git_status, "Status"},
    },
    -- Help
    h = { telbuild.help_tags, "Ayuda" },
    l = {
        m = {"<cmd>Mason<cr>", "Abrir Mason" },
        l = {"<cmd>Lazy<cr>", "Abrir Lazy" },
    },
    -- Nuevo?
    n = {
        name = "Neo-tree",
        t = {"<cmd>Neotree position=float toggle<cr>", "󱏒  NeoTree" },
    },
    -- Telescope
    t = {
        name = "󰰦 ",
        l = {
            name = "Telescope",
            c = { telbuild.colorscheme, "Telescope 󰸌 " },
            g = { telbuild.live_grep, "Telescope Grep" },
            n = { "<cmd>Telescope notify<cr>", "Telescope  " },
        },
        t = {
            name = "Terminal",
            b = {"<cmd>lua _BOTTOM_TOGGLE()<cr>", "  btm"},
            h = {"<cmd>ToggleTerm size=10 direction=horizontal<cr>", "  Horizontal"},
            f = {"<cmd>ToggleTerm direction=float<cr>", "  Float"},
            p = {"<cmd>lua _PYTHON_TOGGLE()<cr>", " Python"},
            v = {"<cmd>ToggleTerm size=10 direction=vertical<cr>", "  Vertical"},
        },
    },
    -- Vim Generals
    v = {
        name = " ",
        f = { "<cmd>enew<cr>", "Nuevo archivo" },
        q = {"<cmd>q!<cr>","Salir 󰗼 "},
        w = { "<cmd>w!<cr>", "Guardar  " },
    },
    -- Window
    w = {
        name = "Ventanas",
        h = { ":wincmd h<cr>",  " Ventana" },
        j = { ":wincmd j<cr>",  " Ventana" },
        k = { ":wincmd k<cr>",  " Ventana" },
        l = { ":wincmd l<cr>",  " Ventana" },
        c = { "<cmd>close<cr>", "Cerrar Ventana" },
        n = { "<cmd>new<cr>", "Nueva Ventana" },
        v = { "<cmd>vsplit<cr>", "VSplit" },
        s = { "<cmd>split<cr>", "Split" },
        r = { ":wincmd r<cr>", "Rotar cw" },
        ["R"] = { ":wincmd R<cr>", "Rotar ccw" },
    },
    -- 
}, { prefix = "<leader>" })
