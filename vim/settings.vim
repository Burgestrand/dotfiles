" Font and size
set guifont=Menlo\ Regular:h14

set textwidth=80
set colorcolumn=80

" Dont auto line break
set formatoptions-=t
set nolinebreak

" Show trailing whitespace
let ruby_space_errors = 1

let g:netrw_liststyle=4

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
let g:rspec_runner = "os_x_iterm2"

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
