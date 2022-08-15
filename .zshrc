REAL_ZSHRC_PATH=$(ls -l $HOME/.zshrc | awk '{print $11}')
ZSH_CONFIG_PATH=${REAL_ZSHRC_PATH%/*}

export ZSH="/home/ucul/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

ZSH_THEME="spaceship"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

source $ZSH_CONFIG_PATH/alias.zsh
source $ZSH_CONFIG_PATH/nvm-autoload.zsh
source $ZSH_CONFIG_PATH/antigen-setup.zsh
source $ZSH_CONFIG_PATH/zsh-vi.zsh
source $ZSH_CONFIG_PATH/vim-config.zsh
source $ZSH_CONFIG_PATH/windows-terminal-fix.zsh

[[ -s "/home/ucul/.gvm/scripts/gvm" ]] && source "/home/ucul/.gvm/scripts/gvm"
