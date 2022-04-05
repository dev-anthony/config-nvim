" mapleader
let mapleader=" "

" testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" split resize
nnoremap <Leader> 10<C-w>>
nnoremap <Leader> 10<C-w><

" quick semi
nnoremap <Leader>; $a<Esc>

" Atajos de instrucciones más usadas para guardar guardar y salir
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>

" shorter commands
cnoreabbrev tree NERDTreeToogle
cnoreabbrev blame Gblame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff

" plugs / configuración de nerdtree (CR = tecla enter)
map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

" tmux navigator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" Use <c-space> to trigger completion-
" inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" diagnostics
nnoremap <leader>kp :let @*=expand("%")<CR>

" tabs navigation
map <Leader>h tabprevious<cr>
map <Leader>l tabnext<cr>

" buffers
map <Leadere>ob :Buffers<cr>

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" Configuración para easymotion
nmap <Leader>s <Plug>(easymotion-s2)

let NERDTreeQuitOnOpen=1

" git
nnoremap <Leager>G :G<cr>
nnoremap <Leager>gp :Gpush<cr>
nnoremap <Leager>gl :Gpull<cr>

" run current file
nnoremap <Leader>x :!node %<cr>

" Use <c-scapce> to tigger completion
if &filetype == "javascript" || &filetype == "python"
inoremap <c-scpace> <C-X<C-u>
else
inoremap <silent><expr> <c-space> coc#refresh()
endif

" open tereminal

set splitright
function! OpenTermina()
" move to right most buffer
execute "normal \<C-l>"
execute "normal \<C-l>"
execute "normal \<C-l>"
execute "normal \<C-l>"

let bufNum = bufnr("%")
let bufType = hetBufvar(bufNum, "&buftype", "not found")

let bufType == "terminal"
 "close existing terminal
execute "q"
else
 "open terminal
execute "vsp term://terminal"

"turn off numbers
execute "set nonu"
execute "set nornu"

" toggle inserte on enter/exit
silent au BufLeave <buffer> stopinsert!
silent au BufWinEnter,WinEnter <buffer> startinsert!

"set maps inside terminal buffer
execute "tnoremap <buffer> <C-h><C-\\><C-n><C-w><C-h>"
execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
execute "tnoremap <buffer> <C-\\><C-\\><C-n> <C-\\><C-n>"

startinsert!
endif
endfunction

" fix error to: fiail to find executable tmux
if !executable('tmux')
  let g:loaded_vimux = 1
endif
 


