source ~/.zplug/init.zsh
source ~/.zshrc.local

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt inc_append_history
setopt share_history
unsetopt beep                   # no bell on error
unsetopt hist_beep              # no bell on error in history
unsetopt list_beep              # no bell on ambiguous completion

zplug "plugins/git",   from:oh-my-zsh, if:"which git"
zplug "themes/norm", from:oh-my-zsh, as:theme
zplug "plugins/vagrant",   from:oh-my-zsh, if:"which vagrant"
zplug "plugins/tmux",   from:oh-my-zsh, if:"which tmux"
zplug "plugins/osx", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "djui/alias-tips"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

source /usr/local/bin/virtualenvwrapper.sh