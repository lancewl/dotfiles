" autouto-install vim-plug
" if empty(glob('~/.config/nvim/autoload/plug.vim'))
"   silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall | source $MYVIMRC
" endif

call plug#begin(stdpath('config') . '/autoload/plugged')
" Nvim basic
Plug 'antoinemadec/FixCursorHold.nvim'

" Theme plugins
Plug 'arcticicestudio/nord-vim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'goolord/alpha-nvim'

" Special file types
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'towolf/vim-helm'

" File & Windows
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'

" Style & Format
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'danymat/neogen'
Plug 'windwp/nvim-autopairs'
Plug 'b3nj5m1n/kommentary'
Plug 'Yggdroot/indentLine'

" Navigate
Plug 'tpope/vim-surround'
Plug 'phaazon/hop.nvim'
Plug 'wellle/targets.vim'

" Tools
Plug 'folke/which-key.nvim'
Plug 'puremourning/vimspector'
Plug 'junegunn/goyo.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'Pocco81/auto-save.nvim'

" For Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" LSP
Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'j-hui/fidget.nvim'
Plug 'onsails/lspkind-nvim'

" Nvim-cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'

call plug#end()
