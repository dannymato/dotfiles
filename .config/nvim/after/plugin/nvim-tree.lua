vim.opt.termguicolors = true
require('nvim-tree').setup()
local api = require('nvim-tree.api')
vim.keymap.set('n', '<leader>pv', api.tree.open)
