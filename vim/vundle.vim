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

Plugin 'gmarik/vundle'

" ====================================================
"   Bundles
" ====================================================

Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'd11wtq/ctrlp_bdelete.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'goldfeld/vim-seek'
Plugin 'henrik/vim-reveal-in-finder'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'nelstrom/vim-qargs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sirver/ultisnips'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'townk/vim-autoclose'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'

" ====================================================
"   Setup (Continued)
" ====================================================

filetype plugin indent on
