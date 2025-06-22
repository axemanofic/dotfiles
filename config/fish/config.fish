# =============================================================================
#
# Abbreviations
#
## ZOXIDE
abbr --erase cd &>/dev/null
alias cd=__zoxide_z
abbr --erase cdi &>/dev/null
alias cdi=__zoxide_zi
## K8S
alias k="kubectl"
## NVIM
alias v="nvim --clean"
alias vm="nvim"
## OTHER
alias cls="clear"
alias cat="bat"

# Aliases: editor
alias e="nvim --clean"
alias E="sudo -e"

# Aliases: ls
alias l='eza -1A --group-directories-first --color=always --git-ignore'
alias ls='l'
alias la='l -l --time-style="+%Y-%m-%d %H:%M" --no-permissions --octal-permissions'
alias tree='l --tree'

# Aliases: git
alias ga='git add'
alias gap='ga --patch'
alias gb='git branch'
alias gba='gb --all'
alias gc='git commit'
alias gca='gc --amend --no-edit'
alias gce='gc --amend'
alias gco='git checkout'
alias gcl='git clone --recursive'
alias gd='git diff --output-indicator-new=" " --output-indicator-old=" "'
alias gds='gd --staged'
alias gi='git init'
alias gl='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(auto)  %D%n%s%n"'
alias gm='git merge'
alias gn='git checkout -b'  # new branch
alias gp='git push'
alias gr='git reset'
alias gs='git status --short'
alias gu='git pull'
alias gbdf='git branch -D $(git branch --list "feature/*")'
alias gbdr='git branch -D $(git branch --list "release/*")'

# Aliases: rg
alias grep="rg --hidden --smart-case --glob='!.git/' --no-search-zip --trim --colors=line:fg:black --colors=line:style:bold --colors=path:fg:magenta --colors=match:style:nobold"

# Aliases: python
alias ipy='uvx ipython'

# =============================================================================
#
# To initialize utilities
#
#
~/.local/bin/mise activate fish | source
starship init fish | source
zoxide init fish | source
fzf --fish | source
