call plug#begin('~/.vim/bundle/')

" colorschemes
Plug 'altercation/vim-colors-solarized'

" syntax
Plug 'kchmck/vim-coffee-script'
Plug 'elixir-lang/vim-elixir'
Plug 'lambdatoast/elm.vim'

" functionality
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree' ", { 'on':  'NERDTreeToggle' }
Plug 'mileszs/ack.vim', { 'on': 'Ack' }
Plug 'danro/rename.vim', { 'on': 'Rename' }

call plug#end()
