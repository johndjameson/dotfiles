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
let mapleader = ','

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
nmap <silent> <c-a> (jV)k :sort<cr>

" Change line from beginning
nmap <c-c> 0C

" Change line from first non-whitespace character
nmap <c-i> ^C

" Quick escape from insert mode
imap jj <esc>

" Copy to end of line
nnoremap Y y$

" Change end of line to clipboard text
nnoremap P v$<left>"_dp

" Delete buffer
nmap <silent> <leader>q :bd<cr>
nmap <silent> <leader>Q :bd!<cr>

" Save file
map <c-s> <esc>:w<cr>
imap <c-s> <esc>:w<cr>

" Open file on GitHub
nnoremap <leader>og :Gbrowse<cr>

" Reveal file in Finder
nnoremap <leader>of :Reveal<cr>

" Open file in Sublime Text
nnoremap <leader>os :! sublime '%:p'<cr>

" Yank path
nmap <silent> <leader>y :let @*=expand("%")<cr>

" Remove search highlighting
nnoremap <silent> <leader>l :nohlsearch<cr>

nnoremap <leader>r :%s///g<left><left><left>

" Wrap line of text
nnoremap <leader>w Vgq

" Disable arrow keys
nnoremap <left> :echoe 'Use h'<cr>
nnoremap <right> :echoe 'Use l'<cr>
nnoremap <up> :echoe 'Use k'<cr>
nnoremap <down> :echoe 'Use j'<cr>

" ====================================================
"   Window Management
" ====================================================

" Navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Splits
nnoremap <leader>v <c-w>v<c-w>l
nnoremap <leader>h <c-w>s<c-w>j

" Switch between buffers
map <leader><leader> <c-^>

" Sizing
nnoremap + <c-w>>
nnoremap _ <c-w><

" ====================================================
"   Plugins
" ====================================================

" ========== Ack ========== "

nnoremap <leader>aa :Ack! ''<left>
nnoremap <leader>ac :Ack! --coffee ''<left>
nnoremap <leader>ah :Ack! --html ''<left>
nnoremap <leader>ad :Ack! --jade ''<left>
nnoremap <leader>aj :Ack! --js ''<left>
nnoremap <leader>am :Ack! --markdown ''<left>
nnoremap <leader>as :Ack! --sass ''<left>

" ========== CtrlP ========== "

nnoremap <c-r> :ClearCtrlPCache<cr>:CtrlP<cr>

" ========== EasyMotion ========== "

map L <plug>(easymotion-bd-w)

" ========== Tabularize ========== "

vnoremap <leader>t= :Tabularize /=<cr>
vnoremap <leader>t: :Tabularize /:<cr>
vnoremap <leader>t{ :Tabularize /{<cr>

" ========== UltiSnips ========== "

" Edit snippets for current file type
nnoremap <leader>se :UltiSnipsEdit<cr>
nnoremap <leader>sd :e ~/.dotfiles/vim/UltiSnips<cr>
