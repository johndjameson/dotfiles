" ====================================================
"
"   Mappings
"   -> Keyboard shortcuts and reassignments
"
" ====================================================

" ====================================================
"   Setup
" ====================================================

" Assign leader key
let mapleader = ","

" ====================================================
"   General
" ====================================================

nmap ; :
nmap <space> :

" Add blank newlines
nmap J O<esc>Dj
nmap K o<esc>Dk

" Quick escape from insert mode
imap jj <esc>

" Save file
map <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>

" Remove search highlighting
nnoremap <silent> <leader>l :nohlsearch<cr>

" Disable arrow keys
nnoremap <Left> :echoe "Use h"<cr>
nnoremap <Right> :echoe "Use l"<cr>
nnoremap <Up> :echoe "Use k"<cr>
nnoremap <Down> :echoe "Use j"<cr>

" ====================================================
"   Window Management
" ====================================================

" Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Splits
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

" Switch between buffers
map <leader><leader> <C-^>

" Sizing
nnoremap + <C-w>>
nnoremap _ <C-w><

" ====================================================
"   Plugins
" ====================================================

" ========== CtrlP ========== "

nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>F :ClearCtrlPCache<cr>:CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

" ========== UltiSnips ========== "

" Edit snippets for current file type
nnoremap <leader>se :UltiSnipsEdit<cr>
nnoremap <leader>sd :e ~/.dotfiles/vim/UltiSnips<cr>
