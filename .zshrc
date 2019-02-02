HISTFILE=$HOME/.zsh-history           # 履歴をファイルに保存する
HISTSIZE=100000                       # メモリ内の履歴の数
SAVEHIST=100000                       # 保存される履歴の数
setopt extended_history               # 履歴ファイルに時刻を記録
setopt hist_ignore_dups               # 重複を記録しない
setopt hist_no_store                  # historyコマンドは履歴に登録しない
function history-all { history -E 1 } # 全履歴の一覧を出力する
alias h='history -E 1'

# aliases
alias rm='rm -i'
alias more='less'
alias ll='ls -G -TlF'
alias la='ls -G -TlaF'
alias ltr='ls -G -TltrF'
#alias vi='nvim'
alias cp='cp -i'
alias be='bundle exec'

# %m: ホスト名(省略版)
# %n: ユーザ名($USERNAME)
# %#: 一般ユーザなら '%' スーパユーザなら '#'
# %d: CWDのフルパス
# %~: CWDのパス. '~' マークに置換バージョン
# %*: 時分秒
# %Bから%b まで: Bold表示
#PROMPT='%m{%n}%% '
PROMPT='(%*) %~ %# '

source ~/src/github.com/olivierverdier/zsh-git-prompt/zshrc.sh
PROMPT='%B%~%b$(git_super_status) %# '


# Ctrl+Dでログアウトしてしまうことを防ぐ
setopt IGNOREEOF

setopt auto_pushd           # $ cd - でTabを押すと、ディレクトリの履歴が見れる
setopt pushd_ignore_dups    # auto_pushdで重複するディレクトリは記録しない
setopt auto_cd              # ディレクトリ名だけで cd
cdpath=(..)

# コマンドの打ち間違いを指摘してくれる
setopt correct
## 色を使用
autoload -Uz colors && colors

# 補完
autoload -U compinit
compinit

export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
export CPPFLAGS="-I/usr/local/opt/imagemagick@6/include"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"

export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# https://qiita.com/itkrt2y/items/0671d1f48e66f21241e2
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

eval "$(rbenv init -)"
eval "$(nodenv init -)"

eval "$(direnv hook zsh)"
