" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    ""autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/autoload/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox'
	Plug 'tpope/vim-commentary'
	"Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ryanoasis/vim-devicons'
	Plug 'sheerun/vim-polyglot'
    
    "Custom
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter'
    Plug 'ctrlpvim/ctrlp.vim' 
    Plug 'scrooloose/nerdcommenter'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'HerringtonDarkholme/yats.vim' "
call plug#end()


"""""""""""""""""""""""""""""""""""
""" PLUGINS CONFIGURATION BELOW: """
"""""""""""""""""""""""""""""""""""


" Nerdtree:
let g:plug_window = 'noautocmd vertical topleft new'
let NERDTreeShowHidden=0
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=0
let NERDTreeSortHiddenFirst=1
let NERDTreeMinimalMenu=1
" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif


" Gruvbox Theme:
set termguicolors
colorscheme gruvbox
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
" hi TabLine    ctermbg=NONE guibg=NONE

