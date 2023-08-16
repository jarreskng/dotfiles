#-----------------------------------------------------------------------
#			  homebrew
#-----------------------------------------------------------------------

eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

#-----------------------------------------------------------------------
#			  functions
#-----------------------------------------------------------------------

function ensure_dir() {
    [ -d "$1" ] || mkdir -m 700 -p "$1"
}

function ensure_file() {
    [ -f "$1" ] || install -m 600 /dev/null "$1"
}

function ensure_link() {
    [ -f "$2" ] || ln -snf "$1" "$2"
}

#-----------------------------------------------------------------------
#			  directories and files
#-----------------------------------------------------------------------

ensure_dir  "${ZSH_COMP_DUMP}"
ensure_dir  "${ZSH_COMP_CACHE}"
ensure_file "${ZSH_HIST_FILE}"

ensure_dir  "${PASSWORD_STORE_DIR}"
