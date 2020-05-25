export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export REQUESTS_CA_BUNDLE=/usr/local/etc/ca-bundle.pem #note: if this is empty we will not have pip working, we may need to unset or run trust-root-ca first!
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export VAULT_ADDR='https://vault.itops.criticaltechworks.com' #default addr only
export EDITOR=nano
export VAGRANT_ALIAS_FILE=~/.dotfiles/files/vagrant-aliases
#personal info
export AD_USER='ctw00143'
