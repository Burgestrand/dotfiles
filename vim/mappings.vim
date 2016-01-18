" Map CMD+E to NERDTree
map <D-e> :NERDTreeToggle<CR>

" Use ag instead of Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Map <SPACE> to unhighlight search
nnoremap <Space> :let @/ = ""
