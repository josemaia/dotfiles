alias yaml2json="python3 -c 'import sys, yaml, json; y=yaml.safe_load(sys.stdin.read()); print(json.dumps(y))'"
alias argoAdmin='kubectl get secret -n daytona argocd-initial-admin-secret --template="{{.data.password | base64decode }}"'
alias python='python3'
