# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Genymotion Path 
export PATH=$PATH:/Applications/Genymotion.app/Contents/MacOS/tools/

# Path to your oh-my-zsh installation.
#export ZSH=/Users/unclear/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"


# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#List of aliases
alias app="docker-compose up & ./build.py webpack:watch:hive_scales"
alias bip2="cdbip2 && atom ."
alias chrome="cd /Applications && open Google\ Chrome.app --args "https://github.com/BeeInformedPartnership/bip2" --app "http://localhost:3000/hive-scales-dev#/""
alias slack="cd /Applications && open Slack.app"
alias start="bip2 && app & slack && chrome"
alias eos="ssh quirogas@eos02.cis.gvsu.edu"
alias log="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias cdmite="cd /Users/unclear/Desktop/Programing/Atom/mite-check-app"
alias cdwizar="cd /Users/unclear/Desktop/GVSU/TA"

export DEFAULT_USER="unclear"
export TERM="xterm-256color"
export ZSH=/Users/unclear/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

#Sets the icon for the home directory and unknown drectories. 
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_HOME_SUB_ICON=""
POWERLEVEL9K_DIR_PATH_SEPARATOR=""
POWERLEVEL9K_ETC_ICON="\uf013"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

#Here is wher I set the color scheme of icons
POWERLEVEL9K_DIR_HOME_BACKGROUND='032'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='032'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='032'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='197'

POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
POWERLEVEL9K_NVM_BACKGROUND="238"
POWERLEVEL9K_NVM_FOREGROUND="green"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"

POWERLEVEL9K_TIME_BACKGROUND='255'
#POWERLEVEL9K_COMMAND_TIME_FOREGROUND='gray'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)
POWERLEVEL9K_SHOW_CHANGESET=true

HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
# /!\ do not use with zsh-autosuggestions

plugins=(gitfast colored-man command-not-found cp dirhistory autojump sudo zsh-autosuggestions zsh-syntax-highlightiting)
# /!\ zsh-syntax-highlighting and then zsh-autosuggestions must be at the end

source $ZSH/oh-my-zsh.sh

#h funtion for highlighter
h() {

    _usage() {
        echo "usage: YOUR_COMMAND | h [-idn] args...
    -i : ignore case
    -d : disable regexp
    -n : invert colors"
    }

    local _OPTS

    # detect pipe or tty
    if [[ -t 0 ]]; then
        _usage
        return
    fi

    # manage flags
    while getopts ":idnQ" opt; do
        case $opt in
            i) _OPTS+=" -i " ;;
            d)  _OPTS+=" -Q " ;;
            n) n_flag=true ;;
            Q)  _OPTS+=" -Q " ;;
                # let's keep hidden compatibility with -Q for original ack users
            \?) _usage
                return ;;
        esac
    done

    shift $(($OPTIND - 1))

    # set zsh compatibility
    [[ -n $ZSH_VERSION ]] && setopt localoptions && setopt ksharrays && setopt ignorebraces

    local _i=0

    if [[ -n $H_COLORS_FG ]]; then
        local _CSV="$H_COLORS_FG"
        local OLD_IFS="$IFS"
        IFS=','
        local _COLORS_FG=()
        for entry in $_CSV; do
          _COLORS_FG=("${_COLORS_FG[@]}" "$entry")
        done
        IFS="$OLD_IFS"
    else
        _COLORS_FG=( 
                "underline bold red" \
                "underline bold green" \
                "underline bold yellow" \
                "underline bold blue" \
                "underline bold magenta" \
                "underline bold cyan"
                )
    fi

    if [[ -n $H_COLORS_BG ]]; then
        local _CSV="$H_COLORS_BG"
        local OLD_IFS="$IFS"
        IFS=','
        local _COLORS_BG=()
        for entry in $_CSV; do
          _COLORS_BG=("${_COLORS_BG[@]}" "$entry")
        done
        IFS="$OLD_IFS"
    else
        _COLORS_BG=(            
                "bold on_red" \
                "bold on_green" \
                "bold black on_yellow" \
                "bold on_blue" \
                "bold on_magenta" \
                "bold on_cyan" \
                "bold black on_white"
                )
    fi

    if [[ -z $n_flag ]]; then
        #inverted-colors-last scheme
        _COLORS=("${_COLORS_FG[@]}" "${_COLORS_BG[@]}")
    else
        #inverted-colors-first scheme
        _COLORS=("${_COLORS_BG[@]}" "${_COLORS_FG[@]}")
    fi

    if [[ "$#" -gt ${#_COLORS[@]} ]]; then
        echo "You have passed to hhighlighter more keywords to search than the number of configured colors.
Check the content of your H_COLORS_FG and H_COLORS_BG environment variables or unset them to use default 12 defined colors."
        return 1
    fi

    if [ -n "$ZSH_VERSION" ]; then
       local WHICH="whence"
    else [ -n "$BASH_VERSION" ]
       local WHICH="type -P"
    fi

    if ! ACKGREP_LOC="$($WHICH ack-grep)" || [ -z "$ACKGREP_LOC" ]; then
        if ! ACK_LOC="$($WHICH ack)" || [ -z "$ACK_LOC" ]; then
            echo "ERROR: Could not find the ack or ack-grep commands"
            return 1
        else
            local ACK=$($WHICH ack)
        fi
    else
        local ACK=$($WHICH ack-grep)
    fi

    # build the filtering command
    for keyword in "$@"
    do
        local _COMMAND=$_COMMAND"$ACK $_OPTS --noenv --flush --passthru --color --color-match=\"${_COLORS[$_i]}\" '$keyword' |"
        _i=$_i+1
    done
    #trim ending pipe
    _COMMAND=${_COMMAND%?}
    #echo "$_COMMAND"
    cat - | eval $_COMMAND

}

#location of the zsh highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Genymotion.app/Contents/MacOS/tools/:/Users/unclear/.vimpkg/bin"
