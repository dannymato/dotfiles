require("danny.remap")
require("danny.packer")
require("danny.set")

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufWritePre', {
	pattern = '',
	command = ':%s/\\s\\+$//e'
})

