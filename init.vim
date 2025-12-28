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
	Plug 'nvim-lualine/lualine.nvim'
	" If you want to have icons in your statusline choose one of these
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'lukas-reineke/indent-blankline.nvim'
	Plug 'chomosuke/typst-preview.nvim', {'tag': 'v1.*'}
	Plug 'LucHermitte/lh-vim-lib'
	Plug 'LucHermitte/local_vimrc'
call plug#end()
function! TypstWatch()
    " Split the window horizontally at the bottom
    botright split

    " Set the height of the new window to 5 lines
    vertical resize 5

    " Open a terminal in the new window
    terminal typst watch `expand("%:")`

    " Focus back on the original window
    wincmd h
endfunction
nnoremap <silent><leader>fc :call TypstWatch()<cr>
set number
set mouse=

colorscheme catppuccin

lua require('sidebar')
lua require('lsp')
lua require('autocomplete')
lua require('tabs')
lua require('statusbar')
lua require('keymap')

lua require("toggleterm").setup()
lua require("ibl").setup()

