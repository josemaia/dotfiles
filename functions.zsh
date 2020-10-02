function vault_config() {
   #to use, we must have defined $AD_PASS in .localrc!
   export VAULT_TOKEN="$(vault login -token-only -method ldap username=$AD_USER password=$AD_PASS)"
}

function force_prune_branches(){
  git branch -vv | grep origin | grep gone | awk '{print $1}'|xargs -L 1 git branch -D
}

function configure_external_mouse(){
#    defaults write -g com.apple.mouse.scaling 0 #probably unnecessary
    defaults write -g com.apple.scrollwheel.scaling 0
}

function unconfigure_external_mouse(){
#    defaults write -g com.apple.mouse.scaling 3
    defaults write -g com.apple.scrollwheel.scaling 0.4412
}

function sync_changes(){
    rsync ~/.dotfiles/ ~/GitHubRepos/dotfiles/ -r
    cd ~/GitHubRepos/dotfiles/
    git add .
    git commit -m "Sync changes"
    git push
    cd $OLDPWD
}

function role(){
    export AWS_PROFILE=$1
}

function get_self_signed(){
    openssl req -newkey rsa:2048 -x509 -nodes -keyout self-signed.key -new -out self-signed.crt -subj /CN=$1 -reqexts SAN -extensions SAN -config <(cat /System/Library/OpenSSL/openssl.cnf <(printf '[SAN]\nsubjectAltName=DNS:$1')) -sha256 -days 3650
}
