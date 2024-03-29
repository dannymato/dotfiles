return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'Mofiqul/dracula.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
	use('mbbill/undotree')

	use({
		'folke/trouble.nvim',
		config = function()
			require('trouble').setup {
				icons = false,
			}
		end
	})

	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  	}

	use('nvim-tree/nvim-web-devicons')
	use('nvim-tree/nvim-tree.lua')

    use('bluz71/nvim-linefly')
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("barbecue").setup()
        end,
    })
end)
