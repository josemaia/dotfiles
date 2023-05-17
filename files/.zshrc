export DOTFILES=$HOME/.dotfiles
export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$DOTFILES

#set the array of all zsh plugins you want to install
plugins=(git docker battery pip python vagrant asdf)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

#place any "secret" environment variables in localrc so they don't get accidentally committed
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

source /opt/homebrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#project-specific
DAYTONA_INIT=$HOME/bmwgit/dev-tools/etc/shell-init.sh
[ -f $DAYTONA_INIT ] && . $DAYTONA_INIT


