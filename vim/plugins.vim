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
Plugin 'nelstrom/vim-qargs'
Plugin 'othree/yajs.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sirver/ultisnips'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'townk/vim-autoclose'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/loremipsum'

" ====================================================
"   Setup (Continued)
" ====================================================

filetype plugin indent on
