" defaults

set nocompatible                " Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start  " more powerful backspacing

set history=50                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

" Vundle
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" custom
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'valloric/youcompleteme'

call vundle#end()            " required
filetype plugin indent on    " required

" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd vimenter * NERDTree

" vim-colors-solarized
syntax enable
"set background=dark
"colorscheme solarized-dark

let g:airline_powerline_fonts = 1
set guifont=Terminus\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"set number
highlight LineNr ctermfg=grey
