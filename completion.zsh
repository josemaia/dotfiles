#setup bash completions for zshell
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
complete -o nospace -C /usr/local/bin/vault vault
source /usr/local/etc/bash_completion.d/az
complete -C '/usr/local/bin/aws_completer' aws
