#setup bash completions for zshell
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/vault vault
source /opt/homebrew/etc/bash_completion.d/az
source /opt/homebrew/etc/bash_completion.d/aws_bash_completer
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
eval "$(register-python-argcomplete pipx)"
