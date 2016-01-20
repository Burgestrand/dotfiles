" Map CMD+E to NERDTree
map <D-e> :NERDTreeToggle<CR>

" Use ag for speed
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Map <SPACE> to unhighlight search
nnoremap <Space> :let @/ = ""<CR>

" Line numbers are nice
set number

" Highlight line / column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
