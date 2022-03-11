" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" Theme plugins
" Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'martinda/Jenkinsfile-vim-syntax'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'windwp/nvim-autopairs'
Plug 'b3nj5m1n/kommentary'
Plug 'Yggdroot/indentLine'
Plug 'christoomey/vim-tmux-navigator'
Plug 'voldikss/vim-floaterm'
Plug 'folke/which-key.nvim'
Plug 'junegunn/goyo.vim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'Pocco81/AutoSave.nvim'
Plug 'mhinz/vim-startify'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'puremourning/vimspector'
Plug 'ThePrimeagen/harpoon'
Plug 'tpope/vim-surround'
Plug 'phaazon/hop.nvim'

" For Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" LSP
Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'tami5/lspsaga.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'j-hui/fidget.nvim'

call plug#end()
