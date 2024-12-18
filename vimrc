
" Invokes clang-format on the current file
function FormatBuffer()
  let cursor_pos = getpos('.')
  :%!clang-format -assume-filename='%:p'
  call setpos('.', cursor_pos)
endfunction

autocmd BufWritePre *.h,*.hpp,*.c,*.cc,*.cpp,*.vert,*.frag :call FormatBuffer()

" Add custom commands in repo for use in terminal mode
let $PATH = $PATH . ":~/.vim/"


" turn on syntax highlighting
syntax on
" Turn on line numbers by default
set number


" Command Mappings
" Used to switch into Terminal-Normal mode
tnoremap `` :<C-w>N
" Go to EOL
nnoremap 00 $
" Go to first nonwhitespace character
nnoremap 99 ^
" Go between windows easier
nnoremap <C-J> <C-W>h
nnoremap <C-K> <C-W>j
nnoremap <C-I> <C-W>k
nnoremap <C-L> <C-W>l

" Custom commands
command Format :call FormatBuffer()
