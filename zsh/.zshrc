# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ifengc"

plugins=(git)
plugins=(redis-cli)
# plugins=(zsh-syntax-highlighting)
plugins=(zsh-autosuggestions)
# plugins=(zsh-apple-touchbar)
# plugins=(history-substring-search)
# plugins=(zsh-completions)

source $ZSH/oh-my-zsh.sh


# ===========================
# user defined
# ===========================
alias vim=/usr/local/Cellar/macvim/8.0-142/MacVim.app/Contents/MacOS/Vim
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias ll='ls -lFh'
alias la='ls -Ah'
alias l='ls -CFh'

export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"
export SCALA_HOME="/usr/local/bin/scala"
export PATH=$PATH:$SCALA_HOME/bin
export PATH=$HOME/miniconda3/bin:$PATH
export AWS_DEFAULT_PROFILE=
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
bindkey "^p" history-beginning-search-backward
bindkey "^n" history-beginning-search-forward
