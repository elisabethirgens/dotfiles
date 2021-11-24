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
if [ -f '/Users/katla/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/katla/google-cloud-sdk/path.zsh.inc'; fi

# Enable shell command completion for gcloud
if [ -f '/Users/katla/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/katla/google-cloud-sdk/completion.zsh.inc'; fi

# Alias to tell git who I am, not globally but per repo
alias gidp='git config user.email "hello@elisabethirgens.com" && git config user.name "Elisabeth Irgens"'
alias gidw='echo remember to add but skip committing this one'
