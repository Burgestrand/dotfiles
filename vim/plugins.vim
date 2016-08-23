call plug#begin('~/.vim/bundle/')

" colorschemes
Plug 'altercation/vim-colors-solarized'

" syntax
Plug 'kchmck/vim-coffee-script'
Plug 'elixir-lang/vim-elixir'
Plug 'ElmCast/elm-vim'
Plug 'isRuslan/vim-es6'

" functionality
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'mileszs/ack.vim'
Plug 'danro/rename.vim', { 'on': 'Rename' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'eiginn/netrw' " upgrade
Plug 'ntpeters/vim-better-whitespace'

call plug#end()
