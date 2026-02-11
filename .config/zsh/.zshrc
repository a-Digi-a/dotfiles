#!/bin/sh

fastfetch
eval "$(zoxide init zsh --cmd cd)"
eval "$(fzf --zsh)"
eval "$(dircolors)"

export PATH=$PATH:~/.cargo/bin/

alias lsa='ls -a --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cp='cpg -g'
alias mv='mvg -g'

export PATH=$PATH:~/.dotnet/tools

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no

setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
zle_highlight=('paste:none')

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"


zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

HISTSIZE=5000
HISTFILE=~/.config/zsh/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_ignore_dups

zstyle ':completion:*' matcher-list 'm: {a-z}={A-Za-z}'

autoload -U compinit && compinit

zinit cdreplay -q

eval "$(starship init zsh)"
