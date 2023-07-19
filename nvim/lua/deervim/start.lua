-- Bootstrapping de lazy.nvim 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- plugins a usar
local plugins = {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
    },
    {
        'nvim-telescope/telescope.nvim',
        branch='0.1.x',
        lazy=true,
        dependencies = {
            'nvim-lua/plenary.nvim',
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        'startup-nvim/startup.nvim',
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require"startup".setup(require"deervim.core.startup")
        end,
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    -- LSPs
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate" -- :MasonUpdate updates registry contents
    },
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
    {
        "rcarriga/nvim-notify",
        init = function()
            vim.notify = require("notify")
        end,
    },
    -- Autocompletado
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {
        "L3MON4D3/LuaSnip",
    	version = "1.*",
	    -- install jsregexp (optional!).
	    build = "make install_jsregexp"
    },
    --bufferline
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    --which-key para encontrar mis keybindings
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    -- Terminal
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true,
    },
    -- Copilot
    { 'github/copilot.vim' },
    -- minipairs
    { 'echasnovski/mini.pairs', version = '*' },
}

-- config de lazy
local opts = {}

require("lazy").setup(plugins, opts)

--require("deervim.core.keybindings")
--require("deervim.core.options")
