export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export GREP_OPTIONS='--color=auto'

# if [ $SHLVL = 1 ]; then
#   tmux
# fi

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
