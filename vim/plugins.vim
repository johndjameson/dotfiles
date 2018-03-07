" *************************************
"
"   Vundle
"   -> Vim plugin manager configuration

" *************************************

" -------------------------------------
"   Setup
" -------------------------------------

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" -------------------------------------
"   Bundles
" -------------------------------------

Plugin 'airblade/vim-gitgutter' " Shows a git diff in the gutter
Plugin 'altercation/vim-colors-solarized' " Solarized color scheme
Plugin 'christoomey/vim-sort-motion' " Mapping for sorting a range of text
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'ervandew/supertab' " Use <Tab> for insert completion
Plugin 'henrik/vim-reveal-in-finder' " Reveal the current file in OS X Finder
Plugin 'kana/vim-textobj-indent' " Text objects for indented blocks of lines
Plugin 'kana/vim-textobj-user' " Create your own text objects
Plugin 'lokaltog/vim-easymotion' " Simpler way to use motions
Plugin 'mattn/emmet-vim' " Expanding abbreviations
Plugin 'mileszs/ack.vim' " Search with ack
Plugin 'mxw/vim-jsx' " Highlighting and indenting for JSX
Plugin 'pangloss/vim-javascript' " Improved Javascript indentation and syntax
Plugin 'prettier/vim-prettier' " Intelligent code formatter
Plugin 'scrooloose/nerdcommenter' " Comment functions
Plugin 'sirver/ultisnips' " Snippet management
Plugin 'terryma/vim-multiple-cursors' " Simultaneous selections
Plugin 'tpope/vim-eunuch' " Helpers for UNIX
Plugin 'tpope/vim-fugitive' " Git wrapper
Plugin 'tpope/vim-markdown' " Markdown runtime files
Plugin 'tpope/vim-rhubarb' " GitHub extension for fugitive.vim
Plugin 'tpope/vim-surround' " Wrap text with characters
Plugin 'vim-airline/vim-airline' " Status bar
Plugin 'vim-airline/vim-airline-themes' " Status bar themes
Plugin 'w0rp/ale' " Asynchronous lint engine
Plugin 'whatyouhide/vim-textobj-xmlattr' " Text objects for HTML/XML attributes

" -------------------------------------
"   Setup (Continued)
" -------------------------------------

call vundle#end()
filetype plugin indent on
