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

" ----- H ----- "

nnoremap <silent> H :bprevious<cr>

" ----- J ----- "

" Quick escape from insert mode
imap jj <esc>

" Add blank newlines
nmap J O<esc>Dj

" ----- K ----- "

nmap K o<esc>Dk

" ----- L ----- "

nnoremap <silent> L :bnext<cr>

" ----- P ----- "

" Change end of line to clipboard text
nmap P v$<left>"_dp

" ----- U ----- "

nmap U :redo<cr>

" ----- Y ----- "

" Copy to end of line
nmap Y y$

" ----- Arrow Keys ----- "

nnoremap <down> :echoe 'Use j'<cr>
nnoremap <left> :echoe 'Use h'<cr>
nnoremap <right> :echoe 'Use l'<cr>
nnoremap <up> :echoe 'Use k'<cr>

" ----- Function ----- "

" View cursor syntax keyword
map <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

" ----- Hyphen ----- "

nnoremap <silent> - :Explore<cr>

" ----- Semicolon ----- "

nmap ; <plug>(easymotion-bd-w)

" ----- Tab ----- "

nnoremap <tab> <c-^>
vnoremap <s-tab> <gv
vnoremap <tab> >gv

" -------------------------------------
"   Control
" -------------------------------------

" ----- C ----- "

" Change line from beginning
nmap <c-c> 0C

" ----- E ----- "

" Emmet
" -> https://github.com/mattn/emmet-vim/blob/master/doc/emmet.txt#L1262

let g:user_emmet_expandabbr_key = '<c-e>'

" ----- F ----- "

" CtrlP
" -> https://github.com/ctrlpvim/ctrlp.vim

" <c-f> | Open CtrlP search

let g:ctrlp_map = '<c-f>'

" ----- H ----- "

nnoremap <c-h> <c-w><c-h>

" ----- I ----- "

unmap <c-i>

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

" <leader>c$       | NERDComEOLComment
" <leader>c<space> | NERDComToggleComment
" <leader>cA       | NERDComAppendComment
" <leader>ca       | NERDComAltDelim
" <leader>cb       | NERDComAlignedComment
" <leader>cc       | NERDComComment
" <leader>ci       | NERDComInvertComment
" <leader>cl       | NERDComAlignedComment
" <leader>cm       | NERDComMinimalComment
" <leader>cn       | NERDComNestedComment
" <leader>cs       | NERDComSexyComment
" <leader>cy       | NERDComYankComment

" ----- E ----- "

nnoremap <leader>e :e<cr>

" ----- G ----- "

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gh :Gbrowse<cr>

" ----- O ----- "

nnoremap <leader>of :Reveal<cr>
nnoremap <leader>ov :! code '%:p'<cr>
nnoremap <leader>osd :e ~/.dotfiles/vim/UltiSnips<cr>
nnoremap <leader>ose :UltiSnipsEdit<cr>

" ----- P ----- "

nnoremap <silent> <leader>p :Prettier \| ALEFix<cr>

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

" EasyMotion
" -> https://github.com/easymotion/vim-easymotion/blob/master/doc/easymotion.txt

" <leader><leader>B       | Beginning of WORD backward
" <leader><leader>E       | End of WORD forward
" <leader><leader>F{char} | Find {char} to the left
" <leader><leader>N       | Jump to latest '/' or '?' backward
" <leader><leader>T{char} | Till after the {char} to the left
" <leader><leader>W       | Beginning of WORD forward
" <leader><leader>b       | Beginning of word backward
" <leader><leader>e       | End of word forward
" <leader><leader>f{char} | Find {char} to the right
" <leader><leader>gE      | End of WORD backward
" <leader><leader>ge      | End of word backward
" <leader><leader>j       | Line downward
" <leader><leader>k       | Line upward
" <leader><leader>n       | Jump to latest '/' or '?' forward
" <leader><leader>s       | Find(Search) {char} forward and backward
" <leader><leader>t{char} | Till before the {char} to the right
" <leader><leader>w       | Beginning of word forward

let g:EasyMotion_leader_key = '<leader><leader>'

" ----- Quotes ----- "

nnoremap <leader>" :%s/\'/"/g<cr>
nnoremap <leader>' :%s/\"/'/g<cr>

" ----- Slash ----- "

nnoremap <silent> <leader>/ :nohlsearch<cr>

" ----- Tab ----- "

nnoremap <leader><tab> :b <tab>
