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
let mapleader = ' '

" ====================================================
"   General
" ====================================================

nmap ; :

" Browse command mode
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>

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

" Replace the current word with clipboard text
nnoremap <leader>p viwp

" Delete buffer
nmap <silent> <leader>q :bd<cr>
nmap <silent> <leader>Q :qa!<cr>

" Yank path
nmap <silent> <leader>y :let @*=expand("%")<cr>

" Remove search highlighting
nnoremap <silent> <leader>l :nohlsearch<cr>

nnoremap <leader>" :%s/\'/"/g<cr>
nnoremap <leader>' :%s/\"/'/g<cr>
nnoremap <leader>r :%s///g<left><left><left>

" Wrap line of text
nnoremap <leader>w Vgq

" Disable arrow keys
nnoremap <left> :echoe 'Use h'<cr>
nnoremap <right> :echoe 'Use l'<cr>
nnoremap <up> :echoe 'Use k'<cr>
nnoremap <down> :echoe 'Use j'<cr>

" View cursor syntax keyword
map <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

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
nnoremap <leader>ah :Ack! --html ''<left>
nnoremap <leader>aj :Ack! --js ''<left>
nnoremap <leader>am :Ack! --markdown ''<left>
nnoremap <leader>as :Ack! --sass ''<left>

" ========== CtrlP ========== "

nnoremap <c-r> :ClearCtrlPCache<cr>:CtrlP<cr>

" ========== EasyMotion ========== "

map L <plug>(easymotion-bd-w)

" ========== Eunuch ========== "

nnoremap <leader>R :Rename ./

" ========== Fugitive ========== "

nnoremap <leader>b :Gblame<cr>
nnoremap <leader>g :Gdiff<cr>

" ========== Prettier ========== "

nnoremap <leader>f :Prettier<cr>

" ========== UltiSnips ========== "

" Edit snippets for current file type
nnoremap <leader>se :UltiSnipsEdit<cr>
nnoremap <leader>sd :e ~/.dotfiles/vim/UltiSnips<cr>

" ====================================================
"   External Applications
" ====================================================

" Open file on GitHub
nnoremap <leader>og :Gbrowse<cr>

" Reveal file in Finder
nnoremap <leader>of :Reveal<cr>

" Open file in Visual Studio Code
nnoremap <leader>ov :! code '%:p'<cr>
