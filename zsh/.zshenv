#-----------------------------------------------------------------------
#                               base directories
#-----------------------------------------------------------------------

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_STATE_HOME="${HOME}/.local/share"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CACHE_HOME="${HOME}/Library/Caches"

#-----------------------------------------------------------------------
#                               default applications
#-----------------------------------------------------------------------

export EDITOR = "nvim"
export VISUAL = "nvim"

#-----------------------------------------------------------------------
#                               zsh workaround
#-----------------------------------------------------------------------

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export ZSH_HIST_FILE="${XDG_CACHE_HOME}/zsh/zhistory"
export ZSH_COMP_DUMP=${XDG_CACHE_HOME}/zsh/zcompdump
export ZSH_COMP_CACHE=${XDG_CACHE_HOME}/zsh/zcompcache

#-----------------------------------------------------------------------
#                               custom options
#-----------------------------------------------------------------------

export PASSWORD_STORE_DIR="${HOME}/Passwords"
     
#-----------------------------------------------------------------------
#                               xdg compatibility
#-----------------------------------------------------------------------

export GNUPGHOME="${XDG_CONFIG_HOME}/gnupg"
export LESSKEY="${XDG_CONFIG_HOME}/less/lesskey"
export LESSHISTFILE="${XDG_DATA_HOME}/less/history"
export NVM_DIR="${XDG_CONFIG_HOME}/nvm"
export NUGET_PACKAGES="${XDG_CACHE_HOME}/nuget/packages"

#-----------------------------------------------------------------------
#                               jetbrains options
#-----------------------------------------------------------------------



#-----------------------------------------------------------------------
#                               nodejs options
#-----------------------------------------------------------------------

export NODE_OPTIONS="--max_old_space_size=8192"

#-----------------------------------------------------------------------
#                               dotnet options
#-----------------------------------------------------------------------



#-----------------------------------------------------------------------
#                               python options
#-----------------------------------------------------------------------




