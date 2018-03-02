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

" ----- C ----- "

" Change line from beginning
nmap <c-c> 0C

" ----- H ----- "

nnoremap <c-h> <c-w><c-h>

" ----- I ----- "

" Change line from first non-whitespace character
nmap <c-i> ^C

" ----- J ----- "

cnoremap <c-j> <down>
nnoremap <c-j> <c-w><c-j>

" ----- K ----- "

cnoremap <c-k> <up>
nnoremap <c-k> <c-w><c-k>

" ----- L ----- "

nnoremap <c-l> <c-w><c-l>

" -------------------------------------
"   Leader
" -------------------------------------

" ----- Config ----- "

let mapleader = ' '

" ----- A ----- "

nnoremap <leader>aa :Ack! ''<left>
nnoremap <leader>ah :Ack! --html ''<left>
nnoremap <leader>aj :Ack! --js ''<left>
nnoremap <leader>am :Ack! --markdown ''<left>
nnoremap <leader>as :Ack! --sass ''<left>

" ----- C ----- "

" NERDCommenter
" -> https://github.com/scrooloose/nerdcommenter#default-mappings

" ----- E ----- "

let g:EasyMotion_leader_key = '<leader>e'

" ----- F ----- "

nnoremap <leader>f :e **/*/

" ----- G ----- "

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gh :Gbrowse<cr>

" ----- J ----- "

nnoremap <leader>j :bp<cr>

" ----- K ----- "

nnoremap <leader>k :bn<cr>

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

nnoremap <leader>R :Rename ./
nnoremap <leader>r :%s///g<left><left><left>

" ----- S ----- "

nmap <leader>s gsii

" ----- W ----- "

noremap <silent> <leader>w :w<cr>

" ----- X ----- "

noremap <silent> <leader>x :x<cr>

" ----- Leader ----- "

" Switch between buffers
nnoremap <leader><leader> <c-^>

" ----- Punctuation ----- "

nnoremap <leader>" :%s/\'/"/g<cr>
nnoremap <leader>' :%s/\"/'/g<cr>

" ----- Slash ----- "

nnoremap <silent> <leader>/ :nohlsearch<cr>

" ----- Tab ----- "

nnoremap <leader><tab> :b <tab>
