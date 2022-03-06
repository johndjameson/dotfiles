" *************************************
"
"   Vim-Plug
"   -> Vim plugin manager configuration

" *************************************

" -------------------------------------
"   Installation
" -------------------------------------

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" -------------------------------------
"   Setup
" -------------------------------------

call plug#begin()

" -------------------------------------
"   Plugins
" -------------------------------------

Plug 'airblade/vim-gitgutter' " Shows a git diff in the gutter
Plug 'christoomey/vim-sort-motion' " Mapping for sorting a range of text
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
Plug 'editorconfig/editorconfig-vim' " Code style settings per project
Plug 'henrik/vim-reveal-in-finder' " Reveal the current file in OS X Finder
Plug 'kana/vim-textobj-indent' " Text objects for indented blocks of lines
Plug 'kana/vim-textobj-user' " Create your own text objects
Plug 'lifepillar/vim-solarized8' " Solarized color scheme
Plug 'lokaltog/vim-easymotion' " Simpler way to use motions
Plug 'mattn/emmet-vim' " Expanding abbreviations
Plug 'mg979/vim-visual-multi' " Simultaneous selections
Plug 'mileszs/ack.vim' " Search with ack
Plug 'mxw/vim-jsx' " Highlighting and indenting for JSX
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " Conquer of Completion
Plug 'pangloss/vim-javascript' " Improved Javascript indentation and syntax
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' } " Intelligent code formatter
Plug 'ryanoasis/vim-devicons' " Adds file type icons to Vim plugins
Plug 'scrooloose/nerdcommenter' " Comment functions
Plug 'scrooloose/nerdtree' " File system explorer
Plug 'sirver/ultisnips' " Snippet management
Plug 'styled-components/vim-styled-components' " Syntax fixes for Styled Components
Plug 'tpope/vim-eunuch' " Helpers for UNIX
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'tpope/vim-liquid' " Liauid language runtime files
Plug 'tpope/vim-markdown' " Markdown runtime files
Plug 'tpope/vim-rhubarb' " GitHub extension for fugitive.vim
Plug 'tpope/vim-surround' " Wrap text with characters
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes
Plug 'whatyouhide/vim-textobj-xmlattr' " Text objects for HTML/XML attributes

" -------------------------------------
"   Teardown
" -------------------------------------

call plug#end()
