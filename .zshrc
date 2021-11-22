export ZSH="/home/ucul/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

ZSH_THEME="spaceship"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh


# This is specific to WSL 2. If the WSL 2 VM goes rogue and decides not to free
# up memory, this command will free your memory after about 20-30 seconds.
#   Details: https://github.com/microsoft/WSL/issues/4166#issuecomment-628493643
alias wslrefresh="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""

alias cchown="sudo chown -R ucul:ucul"
alias cgg="git log --oneline --pretty=oneline --graph"
alias cggv="git log --pretty=full --graph"
alias cggvv="git log --pretty=fuller --graph"
alias cgca="git commit --amend"
alias cgri="git rebase -i"
alias cl="clear"


# ZSH Plugin
source $HOME/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jeffreytse/zsh-vi-mode

antigen apply

# Fix ZSH vi-mode change to NORMAL mode delay
#export KEYTIMEOUT=1
#set timeoutlen=1000
#set ttimeoutlen=50
set noesckeys

export FZF_DEFAULT_COMMAND="find -L"
