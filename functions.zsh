function vault_config() {
   #to use, we must have defined $AD_PASS in .localrc!
   export VAULT_TOKEN="$(vault login -token-only -method ldap username=$AD_USER password=$AD_PASS)"
}

function force_prune_branches(){
  git branch -vv | grep origin | grep gone | awk '{print $1}'|xargs -L 1 git branch -D
}