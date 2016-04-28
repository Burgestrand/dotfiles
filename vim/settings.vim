" Font and size
set guifont=Menlo\ Regular:h14

" Fix leader
let mapleader = "-"

" Map CMD+E to NERDTree
map <D-e> :NERDTreeToggle<CR>

" Use ag for speed
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" CTRL-P don't jump to open
let g:ctrlp_switch_buffer="et"

" Always auto-delete the old buffer if you rename or move a file
let NERDTreeAutoDeleteBuffer=1

" Map <SPACE> to unhighlight search
nnoremap <Space> :let @/ = ""<CR>

" Copy path of current file to OS buffer
nnoremap <leader>Y :let @+ = expand("%")<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
let g:rspec_runner = "os_x_iterm"

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

" Don't switch to open tab when opening file
set switchbuf=""

" Disable Ex mode.
nnoremap Q <nop>
