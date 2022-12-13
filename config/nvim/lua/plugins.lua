return require('packer').startup(function(use)
	
	use {
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.0',
		requires = {'nvim-lua/plenary.nvim'}
	}

	use {
		's1n7ax/nvim-terminal',
		config = function()
			vim.o.hidden = true
			require('nvim-terminal').setup()
		end
	}

	use {'neoclide/coc.nvim', 
		branch = 'release'
	}

	use {'vim-airline/vim-airline'}

	use {'preservim/tagbar'}

	use {
		'nvim-treesitter/nvim-treesitter', 
		run = ':TSUpdate'
	}

	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
	
	use {
		'nvim-tree/nvim-tree.lua',
		 requires = {'nvim-tree/nvim-web-devicons'},
		 tag = 'nightly'
	}

	use {
		"akinsho/toggleterm.nvim",
		tag = '*',
		config = function()
			require("toggleterm").setup()
		end
	}

	use {
		'jdhao/better-escape.vim', 
		event = 'InsertEnter'
	}
	
	use{
        "neovim/nvim-lspconfig",
        config = function()
          require("lspconfig").gopls.setup({})
        end,
    }
	
	use {
		"ray-x/lsp_signature.nvim",
		config = function()
			require('lsp_signature').setup()
		end
	}
	
	use {'glepnir/dashboard-nvim'}
end)
