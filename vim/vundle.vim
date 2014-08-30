" ====================================================
"
"   Vundle
"   -> Vim plugin manager configuration
"
" ====================================================

" ====================================================
"   Setup
" ====================================================

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" ====================================================
"   Bundles
" ====================================================

Bundle 'airblade/vim-gitgutter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'godlygeek/tabular'
Bundle 'goldfeld/vim-seek'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sirver/ultisnips'
Bundle 'townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'

" ====================================================
"   Setup (Continued)
" ====================================================

filetype plugin indent on
