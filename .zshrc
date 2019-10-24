# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# vim 7.4
# alias vim="/usr/local/Cellar/vim/7.4.430_1/bin/vim"

# ctags
alias ctags="/usr/local/bin/ctags"

# nvim
alias vim="nvim"
alias vi="nvim"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode node npm redis-cli web-search tmuxinator)

source $ZSH/oh-my-zsh.sh

# tmux here on mac
path+=/opt/bin

# for macports
path+=/opt/local/bin

# user gems
path+=/Users/grinderrz/.gem/ruby/2.0.0/bin

path+="/Applications/Racket v6.3/bin"

JAVA_HOME=$(/usr/libexec/java_home)

# opp.zsh
source ~/opp.zsh/opp.zsh

PERL_MB_OPT="--install_base \"/Users/grinderrz/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/grinderrz/perl5"; export PERL_MM_OPT;
CMAKE_PREFIX_PATH=/Users/grinderrz/opencv3/share/OpenCV; export CMAKE_PREFIX_PATH;
DYLD_LIBRARY_PATH=/Users/grinderrz/opencv3/lib; export DYLD_LIBRARY_PATH;
PKG_CONFIG_PATH=/home/odroid/opencv3/lib/pkgconfig/; export PKG_CONFIG_PATH;

# http_proxy="http://192.168.35.1:3128"; export http_proxy;
# https_proxy="https://192.168.35.1:3128"; export https_proxy;
export PATH="/usr/local/opt/llvm/bin:$PATH"

export LC_ALL=en_US.UTF-8
