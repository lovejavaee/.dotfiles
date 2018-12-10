# OSX antigen file
# source /usr/local/share/antigen/antigen.zsh
# unsetopt BG_NICE
case $(uname -a) in
     *Microsoft*) unsetopt BG_NICE ;;
esac

ANTIGEN_PATH=~/.dotfiles
source $ANTIGEN_PATH/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
# antigen theme robbyrussell
# antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
# antigen theme spaceship
# antigen theme arrow
antigen theme juanghurtado


# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundles <<EOBUNDLES
cp
lein
pip
brew
sublime
gradle
gem
gitfast
gitignore
python
sudo
ssh-agent
gpg-agent
asdf
vscode
vagrant
vi-mode
zsh_reload

EOBUNDLES
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle sudo
antigen bundle ansible
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle colored-man-pages
antigen bundle autojump
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle extract
antigen bundle npm
antigen bundle osx
antigen bundle web-search
antigen bundle rupa/z
antigen bundle z

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle dannyzen/cf-zsh-autocomplete-plugin
antigen bundle soimort/translate-shell
antigen bundle paulirish/git-open

# External plugins
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# NVM bundle
# export NVM_LAZY_LOAD=true
# antigen bundle lukechilds/zsh-nvm
# antigen bundle Sparragus/zsh-auto-nvm-use

# Tell Antigen that you're done.
antigen apply

# Load custom aliases
[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

# For My custom
[[ -s "$HOME/.antigen/oh-my-custom.zsh" ]] && source "$HOME/.antigen/oh-my-custom.zsh"
# ========================================================================
