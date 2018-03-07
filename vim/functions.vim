" *************************************
"
"   Functions
"   -> Utility scripts
"
" *************************************

" -------------------------------------
"   Kill Buffers
" -------------------------------------

function! KillBuffers()
  bufdo! bwipeout!
endfunction

" -------------------------------------
"   Load Session
" -------------------------------------

function! LoadSession()
  let session_name = fnamemodify(getcwd(), ':t')
  let session_path = '~/.dotfiles/vim/sessions/'
  let repo_path = '/Users/john/Repos/' . session_name

  if !isdirectory(repo_path)
    echo 'Not a ~/Repos directory'
    return
  endif

  call KillBuffers()
  execute 'source ~/.dotfiles/vim/sessions/' . session_name . '.vim'
  echo 'Loaded ' . session_name . ' session'
endfunction

" -------------------------------------
"   Save Session
" -------------------------------------

function! SaveSession()
  let session_name = fnamemodify(getcwd(), ':t')
  let session_path = '~/.dotfiles/vim/sessions/'
  let repo_path = '/Users/john/Repos/' . session_name

  if !isdirectory(repo_path)
    echo 'Not a ~/Repos directory'
    return
  endif

  execute 'mksession! ~/.dotfiles/vim/sessions/' . session_name . '.vim'
  echo 'Saved ' . session_name . ' session'
endfunction
