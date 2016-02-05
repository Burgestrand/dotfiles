" Font and size
set guifont=Menlo\ Regular:h14

" Map CMD+E to NERDTree
map <D-e> :NERDTreeToggle<CR>

" Use ag for speed
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Map <SPACE> to unhighlight search
nnoremap <Space> :let @/ = ""<CR>

" Copy path of current file to OS buffer
nnoremap <leader>y :let @+ = expand("%")<CR>

" Line numbers are nice
set number

" Highlight line / column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Open new splits below/to right
set splitbelow
set splitright

" Consistent big Y
nnoremap Y y$

" Do not allow abandoning unsaved buffers
set nohidden

" Disable Ex mode.
nnoremap Q <nop>
