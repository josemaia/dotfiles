export DOTFILES=$HOME/.dotfiles
export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$DOTFILES
SPACESHIP_ROOT=$ZSH_CUSTOM/themes/spaceship-prompt
#set the name of your custom zsh theme
ZSH_THEME="spaceship"

#set the array of all zsh plugins you want to install
plugins=(git docker battery pip python vagrant asdf)

source $ZSH/oh-my-zsh.sh

#place any "secret" environment variables in localrc so they don't get accidentally committed
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
