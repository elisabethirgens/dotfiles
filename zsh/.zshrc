# Set up nodenv in my shell
eval "$(nodenv init -)"

# Set up rbenv to load automatically
eval "$(rbenv init - zsh)"

# Skip verification of permissions and ownership of directories
# because Homebrew and ohmyzsh don't seem to agree atm
ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/katla/.oh-my-zsh"

# Set name of the theme to load
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="muse"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
plugins=(git)

source $ZSH/oh-my-zsh.sh


# Set PATH for the Google Cloud SDK
if [ -f '/Users/hekla/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/hekla/google-cloud-sdk/path.zsh.inc'; fi

# Enable shell command completion for gcloud
if [ -f '/Users/hekla/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/hekla/google-cloud-sdk/completion.zsh.inc'; fi
