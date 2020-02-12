call plug#begin('~/.config/.nvim/bundle/')

if exists('g:vscode')
    " VSCode extension
else
    " colorschemes
    Plug 'altercation/vim-colors-solarized'

    " syntax
    Plug 'isRuslan/vim-es6'
    Plug 'posva/vim-vue'
    Plug 'jparise/vim-graphql'
    Plug 'mxw/vim-jsx'

    " functionality
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'mileszs/ack.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-vinegar'
    Plug 'danro/rename.vim', { 'on': 'Rename' }
    Plug 'thoughtbot/vim-rspec'
endif

" functionality
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine