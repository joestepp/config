#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

source ~/.zshrc.local

HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt inc_append_history
setopt share_history
unsetopt beep                   # no bell on error
unsetopt hist_beep              # no bell on error in history
unsetopt list_beep              # no bell on ambiguous completion

source /usr/local/bin/virtualenvwrapper.sh

if [ -e $HOME/code/shell_scripts/z/z.sh ]
then
    source $HOME/code/shell_scripts/z/z.sh
fi

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi
