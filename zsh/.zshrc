# Set up rbenv to load automatically
eval "$(rbenv init - zsh)"

# Skip verification of permissions and ownership of directories
# because Homebrew and ohmyzsh don't seem to agree atm
ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH=".oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="muse"

# Which ohmyzsh plugins should we load?
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Activate mise
eval "$(~/.local/bin/mise activate zsh)"

# Tell mise to find config directory in my dotfiles repo (instead of ~/.config/mise)
export MISE_CONFIG_DIR="$HOME/proj/dotfiles/mise"

# Set PATH for Google Cloud SDK and enable command completion for gcloud
if [ -e ~/google-cloud-sdk/ ]; then
    . ~/google-cloud-sdk/path.zsh.inc
    . ~/google-cloud-sdk/completion.zsh.inc
fi

# Path to my brew installed postgresql@16
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Alias to tell git who I am, not globally but per repo
alias gidp='git config user.email "hello@elisabethirgens.com" && git config user.name "Elisabeth Irgens"'
alias gidw='echo remember to add but skip committing this one'
