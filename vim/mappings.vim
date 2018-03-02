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

" ----- J ----- "

" Quick escape from insert mode
imap jj <esc>

" Add blank newlines
nmap J O<esc>Dj

" ----- K ----- "

nmap K o<esc>Dk

" ----- L ----- "

nmap L <plug>(easymotion-bd-w)

" ----- P ----- "

" Change end of line to clipboard text
nmap P v$<left>"_dp

" ----- U ----- "

nmap U :redo<cr>

" ----- Y ----- "

" Copy to end of line
nmap Y y$

" ----- Arrow Keys ----- "

nnoremap <left> :echoe 'Use h'<cr>
nnoremap <right> :echoe 'Use l'<cr>
nnoremap <up> :echoe 'Use k'<cr>
nnoremap <down> :echoe 'Use j'<cr>

" ----- Function ----- "

" View cursor syntax keyword
map <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

" ----- Punctuation ----- "

nmap ; :

" ----- Tab ----- "

vnoremap <tab> >gv
vnoremap <s-tab> <gv

" -------------------------------------
"   Control
" -------------------------------------

" ----- A ----- "

" Sort indentation level
nmap <leader>a gsii

" ----- C ----- "

" Change line from beginning
nmap <c-c> 0C

" ----- F ----- "

nnoremap <c-f> :e **/*/

" ----- I ----- "

" Change line from first non-whitespace character
nmap <c-i> ^C

" ----- J ----- "

cnoremap <c-j> <down>

" ----- K ----- "

cnoremap <c-k> <up>

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

" ----- E ----- "

noremap <silent> <leader>e :e<cr>

" ----- G ----- "

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gh :Gbrowse<cr>

" ----- L ----- "

" Remove search highlighting
nnoremap <silent> <leader>l :nohlsearch<cr>

" ----- O ----- "

nnoremap <leader>of :Reveal<cr>
nnoremap <leader>ov :! code '%:p'<cr>
nnoremap <leader>osd :e ~/.dotfiles/vim/UltiSnips<cr>
nnoremap <leader>ose :UltiSnipsEdit<cr>

" ----- P ----- "

" Replace the current word with clipboard text
nnoremap <leader>p viwp

" ----- Q ----- "

nnoremap <silent> <leader>Q :qa!<cr>
nnoremap <silent> <leader>q :bd!<cr>

" ----- R ----- "

nnoremap <leader>r :%s///g<left><left><left>
nnoremap <leader>R :Rename ./

" ----- W ----- "

noremap <silent> <leader>w :w<cr>

" ----- X ----- "

noremap <silent> <leader>x :x<cr>

" ----- Leader ----- "

" Switch between buffers
nnoremap <leader><leader> <c-^>
nnoremap <leader>] :bn<cr>
nnoremap <leader>[ :bp<cr>

" ----- Punctuation ----- "

nnoremap <leader>" :%s/\'/"/g<cr>
nnoremap <leader>' :%s/\"/'/g<cr>
