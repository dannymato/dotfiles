local lsp = require('lsp-zero')
lsp.preset('recommended')

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		'tsserver',
		'rust_analyzer',
		'gopls',
		'bashls',
		'marksman',
		'lua_ls',
	},
})

local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup {}
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.gopls.setup {}

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	mappings = cmp.mapping.preset.insert({
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-Space>'] = cmp.mapping.confirm({ select = true }),
		["<C-y>"] = cmp.mapping.complete(),
	})
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = 'E',
		warn = 'W',
		hint = 'H',
		info = 'I',
	}
})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true
})

