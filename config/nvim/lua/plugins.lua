return require('packer').startup(function(use)
	
	use {"akinsho/toggleterm.nvim", tag = '*', config = function() require("toggleterm").setup() end}
	use {'folke/tokyonight.nvim'}
	use {'glepnir/dashboard-nvim'}
	use {'jdhao/better-escape.vim', event = 'InsertEnter'}
	use {'leoluz/nvim-dap-go', config = function() require('dap-go').setup() end}
	use {'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end}
	use {'mfussenegger/nvim-dap'}	
	use {'neoclide/coc.nvim', branch = 'release'}
	use {"neovim/nvim-lspconfig", config = function() require("lspconfig").gopls.setup({}) end}
	use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {'nvim-lua/plenary.nvim'}}
	use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}, tag = 'nightly'}
	use {'nvim-treesitter/nvim-treesitter'}
	use {'preservim/tagbar'}
	use {"ray-x/lsp_signature.nvim", config = function() require('lsp_signature').setup() end}
	use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}}
	use {'rcarriga/nvim-notify'}
	use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
	
end)
