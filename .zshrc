REAL_ZSHRC_PATH=$(ls -l $HOME/.zshrc | awk '{print $11}')
ZSH_CONFIG_PATH=${REAL_ZSHRC_PATH%/*}

export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
)

SPACESHIP_PROMPT_ASYNC=true
SPACESHIP_ASYNC_SLEEP_DURATION=0.3
ZVM_CURSOR_STYLE_ENABLED=true

source $ZSH/oh-my-zsh.sh

source $ZSH_CONFIG_PATH/modules/alias.zsh
source $ZSH_CONFIG_PATH/modules/nvm-config.zsh
source $ZSH_CONFIG_PATH/modules/antigen-setup.zsh
source $ZSH_CONFIG_PATH/modules/windows-terminal-fix.zsh
source $ZSH_CONFIG_PATH/modules/wsl-alias.zsh

eval "$(starship init zsh)"
