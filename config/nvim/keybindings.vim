" Set leader key
let g:mapleader= "\<Space>"

"Custom
" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>
"EndCustom
" Window: is a viewport on a buffer
nnoremap ,s :new<CR>
nnoremap ,v :vnew<CR>
nnoremap ,c :close<CR>

" Buffers: is the in-memory text of a file
nnoremap <TAB> :tabp<CR>
nnoremap <S-TAB> :tabn<CR>
nnoremap ,d :bd!<CR>
nnoremap ,w :w<CR>:bd<CR>

" Close all without save
nnoremap <leader>qq :qa!<CR>
" Close and save everything
nnoremap <leader>ww :wa!<CR>

" NERDTree
nmap <C-t> :NERDTreeToggle<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Python
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd FileType python nnoremap <buffer> rp :w<CR>:split term://python %<CR>

" Commentary
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
