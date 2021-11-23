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
ZSH_THEME="muse"

# Which plugins would you like to load?
plugins=(git)

source $ZSH/oh-my-zsh.sh


# Set PATH for the Google Cloud SDK
if [ -f '/Users/hekla/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/hekla/google-cloud-sdk/path.zsh.inc'; fi

# Enable shell command completion for gcloud
if [ -f '/Users/hekla/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/hekla/google-cloud-sdk/completion.zsh.inc'; fi
