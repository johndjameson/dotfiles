" *************************************
"
"   Mappings
"   -> Keyboard shortcuts
"
" *************************************
"
" cmap - Command-line mode
" imap - Insert mode
" nmap - Normal mode
" omap - Operator pending mode
" smap - Select mode
" vmap - Visual and select mode
" xmap - Visual mode
"
" -------------------------------------

" -------------------------------------
"   General
" -------------------------------------

nmap ; :

" Browse command mode
cnoremap <c-j> <down>
cnoremap <c-k> <up>

" Redo
nmap U :redo<cr>

" Add blank newlines
nmap J O<esc>Dj
nmap K o<esc>Dk

" Sort block
nmap <c-a> gsii

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

" Disable arrow keys
nnoremap <left> :echoe 'Use h'<cr>
nnoremap <right> :echoe 'Use l'<cr>
nnoremap <up> :echoe 'Use k'<cr>
nnoremap <down> :echoe 'Use j'<cr>

" View cursor syntax keyword
map <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

" -------------------------------------
"   Window Management
" -------------------------------------

" Navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" -------------------------------------
"   Control
" -------------------------------------

nnoremap <c-f> :e **/*/

" ----- EasyMotion ----- "

map L <plug>(easymotion-bd-w)

" -------------------------------------
"   Leader
" -------------------------------------

let mapleader = ' '

" ----- A ----- "

nnoremap <leader>aa :Ack! ''<left>
nnoremap <leader>ah :Ack! --html ''<left>
nnoremap <leader>aj :Ack! --js ''<left>
nnoremap <leader>am :Ack! --markdown ''<left>
nnoremap <leader>as :Ack! --sass ''<left>

" ----- G ----- "

nnoremap <leader>gb :Gblame<cr>

" ----- L ----- "

" Remove search highlighting
nnoremap <silent> <leader>l :nohlsearch<cr>

" ----- O ----- "

nnoremap <leader>of :Reveal<cr>
nnoremap <leader>og :Gbrowse<cr>
nnoremap <leader>ov :! code '%:p'<cr>
nnoremap <leader>sd :e ~/.dotfiles/vim/UltiSnips<cr>
nnoremap <leader>se :UltiSnipsEdit<cr>

" ----- P ----- "

" Replace the current word with clipboard text
nnoremap <leader>p viwp

" ----- Q ----- "

" Delete buffer
nnoremap <silent> <leader>Q :qa!<cr>
nnoremap <silent> <leader>q :bd!<cr>

" ----- R ----- "

nnoremap <leader>r :%s///g<left><left><left>
nnoremap <leader>R :Rename ./

" ----- W ----- "

noremap <silent> <leader>w :w<cr>

" ----- X ----- "

noremap <silent> <leader>x :x<cr>

" ----- Y ----- "

" Yank path
nmap <silent> <leader>y :let @*=expand("%")<cr>

" ----- Leader ----- "

" Switch between buffers
nnoremap <leader><leader> <c-^>

" ----- Punctuation ----- "

nnoremap <leader>" :%s/\'/"/g<cr>
nnoremap <leader>' :%s/\"/'/g<cr>
