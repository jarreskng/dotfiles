#-----------------------------------------------------------------------
#                         plugins (path)
#-----------------------------------------------------------------------

fpath=(${ZDOTDIR}/plugins $fpath)

#-----------------------------------------------------------------------
#                         navigation
#-----------------------------------------------------------------------

setopt AUTO_CD
setopt GLOB_DOTS 
setopt CHASE_LINKS
setopt EXTENDED_GLOB 

#-----------------------------------------------------------------------
#                         history
#-----------------------------------------------------------------------

HISTFILE="${ZSH_HIST_FILE}"
HISTSIZE=8192
SAVEHIST=8192 

setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS

#-----------------------------------------------------------------------
#                         completion
#-----------------------------------------------------------------------

autoload -U compinit; compinit -d "${ZSH_COMP_DUMP}"

zstyle ':completion:*' cache-path ${ZSH_COMP_CACHE}
zstyle ':completion:*'              matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:*:*:*:*'	    menu select
zstyle ':completion:*:*:default'    force-list always
zstyle ':completion:*'              rehash true
zstyle ':completion::complete:*'    use-cache 1
zstyle ':completion::complete:*'    gain-privileges 1

zstyle ':completion:*:processes'    sort false
zstyle ':completion:*:processes'    command 'ps -au $USER'
zstyle ':completion:*:processes'    insert-ids menu select

#-----------------------------------------------------------------------
#                         prompt
#-----------------------------------------------------------------------

autoload -U promptinit; promptinit

if [[ ${TERMINAL_EMULATOR} == "JetBrains-JediTerm" ]]; then
  prompt redhat
else
  prompt jrs
fi

#-----------------------------------------------------------------------
#                         bindings
#-----------------------------------------------------------------------

case $TERM in
    linux)
    ;;
    xterm-termite)
    ;;
esac

#-----------------------------------------------------------------------
#                         vi-mode
#-----------------------------------------------------------------------

export KEYTIMEOUT=1

bindkey -v
bindkey -v '^?' backward-delete-char

#-----------------------------------------------------------------------
#                         aliases
#-----------------------------------------------------------------------

alias emacs="emacs -nw"
alias em="emacs -nw"
alias nv="nvim"

alias gs="git status"
alias ga="git add"
alias gp="git push"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gl="git log --pretty=oneline --abbrev-commit"

alias rm="nocorrect rm -v -i"
alias cp="nocorrect cp -v -p"
alias mv="nocorrect mv -v -i"
alias ls="gls -alhF --group-directories-first --color=auto"
