-- navigation
vim.keymap.set('n', '<c-h>', ':wincmd h<cr>')
vim.keymap.set('n', '<c-j>', ':wincmd j<cr>')
vim.keymap.set('n', '<c-k>', ':wincmd k<cr>')
vim.keymap.set('n', '<c-l>', ':wincmd l<cr>')

-- archivos
vim.keymap.set('n', '<leader>nf', "<cmd>enew<cr>") --nuevo


-- Paquetes 
vim.keymap.set('n', '<leader>lz', "<cmd>Lazy<cr>")

-- Buffers
vim.keymap.set('n', '<leader>b[', "<cmd>BufferLineCyclePrev<cr>", {}) --prev
vim.keymap.set('n', '<leader>b]', "<cmd>BufferLineCycleNext<cr>", {}) --next

-- neotree

vim.keymap.set('n', '<leader>fe', '<cmd>Neotree toggle<cr>')
--vim.keymap.set('n', '<leader>fe>', '<cmd>Neotree position=float toggle<cr>')

-- telescope
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) --find
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})   --old
vim.keymap.set('n', '<leader>fr', builtin.live_grep, {})  --grep
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})  --help
vim.keymap.set('n', '<leader>fb', builtin.buffers , {})   --buffers
vim.keymap.set('n', '<leader>fg', builtin.git_status, {}) --gitstatus
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})--colorscheme

vim.keymap.set('n', '<leader>fn', "<cmd>T lescope notify<cr>", {}) -- notificaciones
