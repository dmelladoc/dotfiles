require("tokyonight").setup({
    --config de TokyoNight
    style = "moon",
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = false },
        functions = { bold = true },
    },
})

vim.opt.termguicolors = true
vim.cmd[[colorscheme tokyonight]]
