call plug#begin()
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
	Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
	Plug 'romgrk/barbar.nvim' " syntax highlight
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " for syntax highlighting
	Plug 'github/copilot.vim'
	Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } " semantic highlight
	Plug 'Mofiqul/adwaita.nvim' " make it look nice
	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
call plug#end()

set number
set mouse=

colorscheme adwaita

lua require('sidebar')
lua require('lsp')
lua require('autocomplete')
lua require('tabs')
lua require('keymap')

lua require("toggleterm").setup()
