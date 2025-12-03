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

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# ADDED BY 4WM TEAM
builtin source /Users/ctw00143/.4wm/functions.sh
builtin source /Users/ctw00143/.4wm/alias.sh

# DAYTONA PATH
DAYTONA_INIT=/Users/ctw00143/daytona/dev-tools/etc/shell-init.sh
[ -f $DAYTONA_INIT ] && . $DAYTONA_INIT
