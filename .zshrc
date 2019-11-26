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
alias vscode='code'

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
#PROMPT='%B%~%b$(git_super_status) %# '
PROMPT='
%B%~%b$(git_super_status) %# '


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
# export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
# export CPPFLAGS="-I/usr/local/opt/imagemagick@6/include"
# export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"

export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# https://qiita.com/itkrt2y/items/0671d1f48e66f21241e2
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

eval "$(rbenv init -)"
eval "$(nodenv init -)"

eval "$(direnv hook zsh)"

###
# % brew update && brew upgrade ruby-build
# ==> openssl
# A CA file has been bootstrapped using certificates from the SystemRoots
# keychain. To add additional certificates (e.g. the certificates added in
# the System keychain), place .pem files in
#   /usr/local/etc/openssl/certs
#
# and run
#   /usr/local/opt/openssl/bin/c_rehash
#
# openssl is keg-only, which means it was not symlinked into /usr/local,
# because Apple has deprecated use of OpenSSL in favor of its own TLS and crypto libraries.
#
# If you need to have openssl first in your PATH run:
#   echo 'export PATH="/usr/local/opt/openssl/bin:$PATH"' >> ~/.zshrc
#
# For compilers to find openssl you may need to set:
#   export LDFLAGS="-L/usr/local/opt/openssl/lib"
#   export CPPFLAGS="-I/usr/local/opt/openssl/include"
#
# For pkg-config to find openssl you may need to set:
#   export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
export PATH="/usr/local/opt/openssl/bin:$PATH"

# 以下の変数は imagemagick と重複してる。コンパイル時にだけ必要と判断しコメント化した
# export LDFLAGS="-L/usr/local/opt/openssl/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl/include"
# export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
