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
Bundle 'digitaltoad/vim-jade'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'goldfeld/vim-seek'
Bundle 'henrik/vim-reveal-in-finder'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'lokaltog/vim-easymotion'
Bundle 'mattn/emmet-vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sirver/ultisnips'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'

" ====================================================
"   Setup (Continued)
" ====================================================

filetype plugin indent on
