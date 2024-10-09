
" Invokes clang-format on the current file
function FormatBuffer()
  if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
    let cursor_pos = getpos('.')
    :%!clang-format
    call setpos('.', cursor_pos)
  endif
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

