# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

eval "$(rbenv init -)"
#export PATH
export PATH=/usr/local/bin:$PATH
#export PATH=$PATH:/usr/local/bin
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
eval "$(nodenv init -)"

#stty -echoctl

#source ~/.nvm/nvm.sh
#PS1='[\u@\h \W]\$ ' # default
#source ~/.git-prompt.sh
#PS1='\[\e[1;34m\][\u@\h \W]\$\[\e[m\] $(__git_ps1) '
#PS1='\[\e[1;34m\][\u@\h \W]\$\[\e[m\] '

# pro git
# 以下は効かない!?
#export GIT_PS1_SHOWDIRTYSTSTE=1
#export PS1='\w$(__git_ps1 " (%s))"\$'

# brew install bash-completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# brew install bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share

   ## Set config variables first
   #GIT_PROMPT_ONLY_IN_REPO=1

   ## GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
   ## GIT_PROMPT_IGNORE_SUBMODULES=1 # uncomment to avoid searching for changed files in submodules

   ## GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
   ## GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files

   ## GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0 # uncomment to avoid printing the number of changed files

   ## GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

   ## GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
   ## GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

   ## as last entry source the gitprompt script
   ## GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
   ## GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
   ## GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"

  # takaesu
  #export GIT_PROMPT_THEME=Single_line_NoExitState_Gentoo
  export GIT_PROMPT_THEME=Single_line_Solarized
fi

#export PATH="/usr/local/Cellar/yarn/1.5.1_1/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export HISTIGNORE=history:exit
#export HISTFILE=$HOME/Dropbox/bash_history

# java jdk
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

#alias mvim='/Applications/MacVim.app/Contents/bin/gvim -U ~/.mvimrc'
#alias mvim='/Applications/MacVim.app/Contents/bin/mvim "$@"'
