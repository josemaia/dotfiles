#setup bash completions for zshell
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
source /opt/homebrew/etc/bash_completion.d/az
complete -C '/usr/local/bin/aws_completer' aws
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
