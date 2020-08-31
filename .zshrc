# Path exports
export DEFAULT_USER=$USER
export TERM="xterm-256color"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR="/usr/local/share/zsh-syntax-highlighting/highlighters"
export EDITOR=nvim
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

#path fix
PATH=~/bin:/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH

# HIghlight path
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias cddot="cd $HOME/dot_tomes"
alias cdlearn="cd $HOME/Documents/Rust_learning"
alias cdvrops="cd $HOME/Documents/vrops-architect"
alias cddeploy="cd $HOME/Documents/vrops-deploy"
alias cdunity-"cd $HOME/Documents/dell-emc-unity-dp"
alias :q="exit"
alias :w="cargo check"
alias :x="cargo run"
alias vim="nvim"
alias gitsub="git submodule update --init"
alias lookect='exuno build && exuno collect --to protobuf | exuno view'
alias collect='exuno build && exuno collect'
alias test='exuno build && exuno test'
alias clone="clone --recursive"

# Theme and mode
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

#Sets the icon for the home directory and unknown drectories.
POWERLEVEL9K_FOLDER_ICON="\ue62e"
POWERLEVEL9K_HOME_SUB_ICON="\ufd23"
POWERLEVEL9K_DIR_PATH_SEPARATOR="  "
POWERLEVEL9K_ETC_ICON="\uf013"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

#Set the background color for specific segments
POWERLEVEL9K_DIR_HOME_BACKGROUND="104"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='104'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='104'

#Set the foreground color for specific segments
POWERLEVEL9K_DIR_HOME_FOREGROUND='233'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='233'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='233'

#VCS segment customization
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='48'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='202'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='229'

POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
POWERLEVEL9K_NVM_BACKGROUND="238"
POWERLEVEL9K_NVM_FOREGROUND="green"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"

POWERLEVEL9K_TIME_BACKGROUND='255'
POWERLEVEL9K_COMMAND_TIME_FOREGROUND='gray'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)
POWERLEVEL9K_SHOW_CHANGESET=true

HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"


ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

# 10ms for key sequences
KEYTIMEOUT=1


# /!\ zsh-syntax-highlighting and then zsh-autosuggestions must be at the end
plugins=(gitfast colored-man command-not-found cp colorize dirhistory zsh-autosuggestions zsh-syntax-highlightiting)


# source stuff
source  ~/powerlevel9k/powerlevel9k.zsh-theme
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#Better history searching with arrow keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

#Advanced Tab completion
autoload -U compinit
compinit

export PATH="$HOME/.cargo/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv-virtualenv init -)"
