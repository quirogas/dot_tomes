# Genymotion Path 
export PATH=$PATH:/Applications/Genymotion.app/Contents/MacOS/tools/


#List of aliases
alias app="docker-compose up & ./build.py webpack:watch:hive_scales"
alias bip2="cdbip2 && atom ."
alias chrome="cd /Applications && open Google\ Chrome.app --args "https://github.com/BeeInformedPartnership/bip2" --app "http://localhost:3000/hive-scales-dev#/""
alias slack="cd /Applications && open Slack.app"
alias start="bip2 && app & slack && chrome"
alias eos="ssh quirogas@eos02.cis.gvsu.edu"
alias log="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias cdmite="cd /Users/unclear/Desktop/Programing/Atom/mite-check-app"
alias cdwizard="cd /Users/unclear/Desktop/GVSU/TA"

export DEFAULT_USER="unclear"
export TERM="xterm-256color"
export ZSH=/Users/unclear/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

#Sets the icon for the home directory and unknown drectories. 
POWERLEVEL9K_FOLDER_ICON="\ue62e"
POWERLEVEL9K_HOME_SUB_ICON="\ufd23"
POWERLEVEL9K_DIR_PATH_SEPARATOR=""
POWERLEVEL9K_ETC_ICON="\uf013"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

#Set the background color for specific segments
POWERLEVEL9K_DIR_HOME_BACKGROUND="177"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='177'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='177'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='197'

#VCS segment customization
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='48'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='202'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='229'


POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

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

# /!\ zsh-syntax-highlighting and then zsh-autosuggestions must be at the end
plugins=(gitfast colored-man command-not-found cp dirhistory zsh-autosuggestions zsh-syntax-highlightiting)

# Runs the shell command
source $ZSH/oh-my-zsh.sh

#location of the zsh highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'
