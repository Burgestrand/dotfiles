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
Plug 'scrooloose/nerdtree' ", { 'on':  'NERDTreeToggle' }
Plug 'mileszs/ack.vim'
Plug 'danro/rename.vim', { 'on': 'Rename' }
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
