source ~/.zplug/init.zsh

zplug "sorin-ionescu/prezto"
zplug "modules/history-substring-search", from:prezto
zplug "modules/history", from:prezto
zplug "modules/completion", from:prezto
zplug "modules/git", from:prezto
zplug "modules/prompt", from:prezto
zstyle ':prezto:module:prompt' theme 'sorin'

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
    echo; zplug install
fi

zplug load

export LS_COLORS="di=1;35:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=0;41:sg=30;46:tw=0;42:ow=30;43"
alias ls='ls --color=auto'
alias ll='ls -ahlF'
alias la='ls -A'
alias rm='rm -i'
alias tmux='tmux -2'

export PATH="${HOME}/miniconda3/bin:/usr/sbin:$PATH"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
bindkey "^p" history-beginning-search-backward
bindkey "^n" history-beginning-search-forward
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
export PYSPARK_PYTHON=python3
export PYSPARK_SUBMIT_ARGS="--packages org.apache.hadoop:hadoop-aws:2.7.3 pyspark-shell"
