# .bashrc

# Source global definitions
#if [ -f /etc/bashrc ]; then
#	. /etc/bashrc
#fi

# User specific aliases and functions
#alias r='rails'
#alias irb='pry'
alias rm='rm -i'
alias more='less'
alias ll='ls -TlF'
alias la='ls -TlaF'
alias ltr='ls -TltrF'
#alias vi='nvim'
alias cp='cp -i'
alias be='bundle exec'

export HISTSIZE=90000
export HISTFILESIZE=90000

#TERM=xterm

#EDITOR=/usr/bin/vim
#EDITOR=/usr/local/bin/nvim
EDITOR=/usr/bin/vi

export PATH=$PATH:$HOME/bin

#PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting
#export PATH=/usr/local/heroku/bin:$PATH

#
#SSH_ENV=$HOME/.ssh/environment
   
## start the ssh-agent
## https://confluence.atlassian.com/display/BITBUCKET/Set+up+SSH+for+Git
#function start_agent {
#    echo "Initializing new SSH agent..."
#    # spawn ssh-agent
#    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
#    echo succeeded
#    chmod 600 "${SSH_ENV}"
#    . "${SSH_ENV}" > /dev/null
#    /usr/bin/ssh-add
#}
#   
#if [ -f "${SSH_ENV}" ]; then
#     . "${SSH_ENV}" > /dev/null
#     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
#        start_agent;
#    }
#else
#    start_agent;
#fi

# history にコマンド実行時刻を記録する
HISTTIMEFORMAT='%Y-%m-%dT%T%z '

eval "$(direnv hook bash)"

export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
