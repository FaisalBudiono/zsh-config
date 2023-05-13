REAL_ZSHRC_PATH=$(ls -l $HOME/.zshrc | awk '{print $11}')
ZSH_CONFIG_PATH=${REAL_ZSHRC_PATH%/*}

export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

ZSH_THEME="spaceship"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

source $ZSH_CONFIG_PATH/modules/alias.zsh
source $ZSH_CONFIG_PATH/modules/nvm-autoload.zsh
source $ZSH_CONFIG_PATH/modules/antigen-setup.zsh
source $ZSH_CONFIG_PATH/modules/zsh-vi.zsh
source $ZSH_CONFIG_PATH/modules/vim-config.zsh
source $ZSH_CONFIG_PATH/modules/windows-terminal-fix.zsh
source $ZSH_CONFIG_PATH/modules/wsl-alias.zsh
