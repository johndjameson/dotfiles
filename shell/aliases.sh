# ****************************************************
#
#   Aliases
#   -> Shorthand commands
#
# ****************************************************

# ----------------------------------------------------
#   Shell
# ----------------------------------------------------

# ----- Claude ----- #

alias cl='claude'

# ----- Clear ----- #

alias c='clear'
alias cc='clear'

# ----- Copy ----- #

alias cpa="cp ~/.dotfiles/advantage2/{qwerty,state}.txt /Volumes/ADVANTAGE2/active/"

# ----- DNS ----- #

alias flush_dns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# ----- Finder ----- #

alias browse='open -a "Google Chrome" .'
alias here='open .'

# ----- List ----- #

alias l='eza --all --bytes --classify=always --icons=auto --oneline --long --group-directories-first --no-user'

# ----- Look Up ----- #

alias '?'="alias | rg"

# ----- Navigation ----- #

alias ..='cd ../'

alias cd.="cd ~/.dotfiles"
alias cdbr="cd ~/.dotfiles/brew"
alias cdc="cd ~/.config"
alias cdd="cd ~/Desktop"
alias cddl="cd ~/Downloads"
alias cdi="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias cdib="cd ~/Library/Mobile\ Documents/iCloud~com~apple~iBooks/Documents"
alias cdj="cd ~/Repos/johndjameson.com"
alias cdl='cd -'
alias cdp="cd /Library/Audio/Plug-Ins"
alias cdr="cd ~/Repos"
alias cdv='cd /Volumes'

alias path="echo $(pwd) 'copied to clipboard!' && pwd | pbcopy"

# ----- Remove ----- #

alias rmd='rm -rf'
alias rmorig='find . -name *.orig -delete'

# ----- SSH ----- #

alias ssh_key='pbcopy < ~/.ssh/id_rsa.pub'

# ----------------------------------------------------
#   Programs
# ----------------------------------------------------

# ----- Erdtree ----- #

alias t='erd'
alias td='erd --dirs-only'

# ----- Git ----- #

alias 'g?'='git help'
alias g='git'
alias ga.='git add --all'
alias ga='git add'
alias gac='git add --all && git commit --verbose'
alias gap='clear && git add --patch'
alias gb='git branch'
alias gbD='git branch -D'
alias gbDa='git checkout $(git_default_branch) && git branch | rg --invert-match "$(git_default_branch)" | xargs git branch -D'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbm='git branch --move' #rename
alias gbr='git branch --remotes'
alias gbv='git branch -vv'
alias gc='git commit --verbose'
alias gca='git commit --amend'
alias gcl='git clean -d --force --interactive'
alias gcn='git commit'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdb='git diff --stat --color $(git_default_branch)..$(git_current_branch)'
alias gdc='git diff --cached'
alias gdm='git diff $(git_default_branch)'
alias gf='git fetch'
alias gfo='git fetch && git checkout'
alias gfp='git fetch --prune'
alias gfu='git fetch upstream'
alias gg='git log --pretty=format:"%C(red)%h%Creset %s %C(magenta)(%cr)" --date=relative -5'
alias gga='git log --pretty=format:"%C(red)%h%Creset %s %C(magenta)(%cr)" --date=relative'
alias ggl='git log --pretty=format:"%C(red)%h%Creset %s %C(magenta)(%cr)" --date=relative -1 --patch'
alias ggo='git log --oneline --stat -1'
alias ggp='git log --pretty=format:"%C(red)%h%Creset %s %C(magenta)(%cr)" --date=relative -5 --patch'
alias ggpb='git log --pretty=format:"%s" --date=relative -1 | pbcopy'
alias ghb='gh browse --branch $(git_current_branch)'
alias ghc='gh repo clone'
alias gk='git clone'
alias gl='git pull --rebase'
alias glp='git pull --rebase && git push'
alias gm='git merge'
alias gmc='git merge --no-ff'
alias gms='git merge --squash'
alias gmm='git merge $(git_default_branch)'
alias gmt='git mergetool'
alias go='git checkout'
alias goH='git checkout HEAD .'
alias gob='git checkout -b'
alias gobm='git_branch_origin_main'
alias gom='git checkout $(git_default_branch)'
alias got='git checkout --track'
alias gp='git push'
alias gpb='git push --set-upstream origin'
alias gpbD='git push origin --delete'
alias gpbc='git push --set-upstream origin $(git_current_branch)'
alias gpt='git push --tags'
alias gr='git reset'
alias grb='git_rebase_head'
alias grs='git_reset_soft'
alias grv='git revert'
alias grvm='git revert -m 1'
alias gs='git status --short --branch'
alias gsl='git status'
alias gsmu='git submodule update'
alias gst='git add . && git stash'
alias gstD='git stash drop'
alias gsti='git stash --patch'
alias gstl='git stash list'
alias gstp='git stash pop && git reset'
alias gsts='git stash save --keep-index'
alias gsu='git status --short --branch | grep "U\|orig"'
alias gtl='git tag --list'

# ----- Homebrew ----- #

alias br='brew'
alias brU='brew upgrade'
alias brb.="brew bundle --file=~/.dotfiles/brew/Brewfile"
alias brl='brew list'
alias bro='brew outdated'
alias brs='brew search'
alias bru='brew update'

# ----- Node ----- #

alias n='node'
alias nts='node --experimental-strip-types'

# NPM

alias nD='rm -rf node_modules/'
alias ngi='npm --global install'
alias ngin='npm --global install npm'
alias ni='npm install'
alias nisd='npm install --save-dev'
alias npr='npm prune'
alias nr='npm run'
alias nrst='npm run storybook'
alias ns='npm start'
alias nt='npm test'
alias nu='npm uninstall'

# ----- Python ----- #

alias serve='python -m SimpleHTTPServer'

# ----- Vim ----- #

alias v='nvim'

alias v.n='cd ~/.dotfiles && nvim nvim/init.lua nvim/lua/config/lazy.lua nvim/lua/plugins && cd -'

alias v.f='cd ~/.dotfiles && nvim vim/functions.vim && cd -'
alias v.m='cd ~/.dotfiles && nvim vim/mappings.vim && cd -'
alias v.p='cd ~/.dotfiles && nvim vim/plugins.vim && cd -'
alias v.v='cd ~/.dotfiles && nvim vim/vimrc vim/mappings.vim vim/functions.vim vim/plugins.vim && cd -'

alias v.A='cd ~/.dotfiles && nvim advantage2/qwerty.txt advantage2/state.txt && cd -'
alias v.K='cd ~/.dotfiles && nvim karabiner/karabiner.json && cd -'
alias v.a='cd ~/.dotfiles && nvim shell/aliases && cd -'
alias v.ag='cd ~/.dotfiles && nvim ag/agignore && cd -'
alias v.br='cd ~/.dotfiles && nvim brew/Brewfile && cd -'
alias v.c='cd ~/.dotfiles && nvim shell/config && cd -'
alias v.g='cd ~/.dotfiles && nvim ghostty/config && cd -'
alias v.gh='cd ~/.dotfiles && nvim git/gitconfig && cd -'
alias v.s='cd ~/.dotfiles && nvim starship/starship.toml && cd -'
