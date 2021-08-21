# ===
# === fish
# ===
# remove greeting
set fish_greeting

# ===
# === global envs
# ===
export EDITOR='nvim'
export VIMRC='~/.config/nvim/init.vim'
export FISHRC='~/.config/fish/config.fish'

# ===
# === general alias
# ===
alias c=clear
alias rm=trash
alias vbox=VBoxManage

# vim
alias vi='nvim'
alias vim='nvim'
# docker & kubectl
alias k=kubectl
alias d=docker

alias ll='ls -hlt'
alias la='ls -a'
alias gcc4='gcc-4.9'
alias gcc=gcc-10
alias grep="grep --color=auto"


# ===
# === development
# ===
## vm in virtual box
alias start-ubuntu="vbox startvm ubuntu --type headless"
alias stop-ubuntu="vbox controlvm ubuntu poweroff --type headless"

alias ubuntu="ssh yqiu@localhost -p 2333"
alias arch="ssh yqiu@localhost -p 2334"

## mysql
alias myroot="mycli -h127.0.0.1 -uroot -pabcd1234"
alias myengine="mycli -h127.0.0.1 -uengine -pabcd1234 uluru_test"
alias myuluru="mycli -h127.0.0.1 -uuluru -ppass@pass uluru"

## leanengine cloud code docker server
alias docker-server="ssh ubuntu@localhost"

# ===
# === Git
# ===
alias gits="git status"
alias gitd="git diff"
alias gita="git add ."
alias gitl="git log"
alias gitb="git branch"
alias gitpu="git push origin"
alias gitpl="git pull origin"
alias gitpm="git push origin master"
alias gitf="git fetch"
alias gitlp="git log --all --decorate --oneline --graph"


# ===
# === cli tools: fzf, fd, rg and so on
# ===
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

## using `fd` for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS
--bind 'ctrl-f:preview-page-down,ctrl-b:preview-page-up'
"

# ===
# === Language Specific
# ===
## java
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"

## rust
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
export PATH="$HOME/.cargo/bin:$PATH"

## go
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH="$GOPATH/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"

## node
export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

## python
alias python=python3
alias py=python3
alias pip=pip3
alias ipy=ipython3

## ruby
export PATH="/usr/local/opt/ruby@2.7/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"


# ===
# === Other PATH
# ===
export PATH="/opt/local/bin:$PATH"

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/cups/bin:$PATH"

## llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# ===
# === System
# ===

## file
ulimit -n 2048

## influxdb
export PATH="/usr/local/opt/influxdb@1/bin:$PATH"

## kitty
alias ssh="kitty +kitten ssh"
