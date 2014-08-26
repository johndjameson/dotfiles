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

" Redo
nmap U :redo<cr>

" Add blank newlines
nmap J O<esc>Dj
nmap K o<esc>Dk

" Sort block
nmap <C-a> (jV)k :sort<cr>

" Change line from beginning
nmap <C-c> 0C

" Change line from first non-whitespace character
nmap <C-i> ^C

" Quick escape from insert mode
imap jj <esc>

" Delete buffer
nmap <silent> <leader>q :bd<cr>
nmap <silent> <leader>Q :bd!<cr>

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

nnoremap <C-f> :CtrlP<cr>
nnoremap <C-r> :ClearCtrlPCache<cr>:CtrlP<cr>

" ========== UltiSnips ========== "

" Edit snippets for current file type
nnoremap <leader>se :UltiSnipsEdit<cr>
nnoremap <leader>sd :e ~/.dotfiles/vim/UltiSnips<cr>
