export GOPATH=$(go env GOPATH)
export PATH=${PATH}:${GOPATH}/bin

export PATH="/Users/ctw00143/.local/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
export PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.11/bin/"
export PATH="${PATH}:${KREW_ROOT:-$HOME/.krew}/bin"


# ADDED BY 4WM TEAM
export PATH="${HOMEBREW_PREFIX}/opt/curl/bin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/grep/libexec/gnubin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/coreutils/libexec/gnubin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/gawk/libexec/gnubin:$PATH"
