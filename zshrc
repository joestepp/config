source ~/.zplug/zplug
source ~/.zshrc.local

zplug "themes/norm", from:oh-my-zsh
zplug "plugins/git",   from:oh-my-zsh, if:"which git"
zplug "plugins/vagrant",   from:oh-my-zsh, if:"which vagrant"
zplug "plugins/tmux",   from:oh-my-zsh, if:"which tmux"
zplug "plugins/tmuxinator",   from:oh-my-zsh, if:"which tmuxinator"
zplug "plugins/osx", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "djui/alias-tips"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", nice:10

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

source /usr/local/bin/virtualenvwrapper.sh