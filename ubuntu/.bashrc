# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\033]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi





export PATH=$PATH:/home/tr/apache-maven-3.2.5/bin
export PATH=$PATH:/home/tr/apache-maven/bin
export ANDROID_HOME=/home/tr/android-sdk
export PATH=$PATH:/home/tr/genymotion:/home/tr/android-sdk/platform-tools

export JAVA_OPTS="-XX:MaxPermSize=512m -Xms256m -Xmx1024m -Xss28m -Xmn24m"

#export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

export PATH=$PATH:'/home/tr/.wine/drive_c/Program Files (x86)/PICC'

export PATH=$PATH:"/opt/microchip/xc8/v1.31/bin"
export PATH=$PATH:/home/tr/gradle/bin
export PATH=$PATH:/usr/hitech/picc-18/9.80/bin


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

. /etc/bash_completion.d/docker.io
. /etc/bash_completion.d/git-completion.bash
. /etc/bash_completion.d/mvn 

export PATH="/home/tr/anaconda/bin:$PATH"

export ANDROID_HOME=/home/tr/android-sdk/
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/21.1.2

#export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

export EDITOR=vim
export LESS=eFRX


function get_git_changes {
    UNTRACK=`git ls-files --exclude-standard --others 2>/dev/null|wc -l`
    MODIFIED=`git diff --name-only 2>/dev/null|wc -l`
    INDEX=`git diff --cached --name-only 2>/dev/null | wc -l`
    U="";
    M="";
    I="";
    BRANCH=`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

    if [ $UNTRACK -ne "0" ];then U="\033[36mnew=${UNTRACK}\033[0m";fi
    if [ $MODIFIED -ne "0" ];then M="\033[34mmodified=${MODIFIED}\033[0m";fi
    if [ $INDEX -ne "0" ];then I="\033[33mstaged=${INDEX}\033[0m";fi

    UP_ARROW='\xE2\x86\x91'
    DOWN_ARROW='\xE2\x86\x93'
    REMOTE=`git remote 2>/dev/null | head -1`
    AHEAD=`git rev-list $REMOTE/$BRANCH..HEAD 2>/dev/null|wc -l`
    BEHIND=`git rev-list HEAD..$REMOTE/$BRANCH 2>/dev/null|wc -l`
    RET="\033[0m"

    if [ $AHEAD -ne "0" ] ; then
            RET="$RET\033[38;5;14m$AHEAD${UP_ARROW}\033[0m";
    fi
    if [ $AHEAD -ne "0" ] && [ $BEHIND -ne "0" ] ; then
            RET="$RET \033[38;5;129m$BEHIND${DOWN_ARROW}\033[0m";
        else
         if [ $BEHIND -ne "0" ];then
            RET="\033[38;5;129m$BEHIND${DOWN_ARROW}\033[0m"
         fi;
    fi


    if [ -n "$BRANCH" ];then
        if [ $AHEAD -ne "0" ] || [ $BEHIND -ne "0" ] ; then
            echo -ne "\n\033[31mremote ($REMOTE/$BRANCH)\033[0m : $RET"
        fi
        if [ $UNTRACK -ne "0" ] || [ $MODIFIED -ne "0" ] || [ $INDEX -ne "0" ];then
            echo -ne "\n\033[38;5;129mgit status ( "
            if [ $INDEX -ne "0" ];then
                echo -ne "$I "
            fi
            if [ $MODIFIED -ne "0" ];then
                echo -ne "$M "
            fi
            if [ $UNTRACK -ne "0" ];then
                echo -ne "$U "
            fi
            echo -ne "\033[38;5;129m)\n"
        fi
    fi
}

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(( `sed -nu "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p" /proc/meminfo`/1024))"\033[38;5;22m/"$((`sed -nu "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo`/1024 ))MB"\t\033[m\033[38;5;55m$(cat /proc/loadavg|awk "{print \$1, \$2, \$3}")\033[m"; echo -ne "$(get_git_changes)"'

export PROMPT_COMMAND

# Use this other PS1 string if you want \W for root and \w for all other users:
PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\n\h\[\033[01;34m\] \w'; else echo '\[\033[01;32m\]\n\u@\h\[\033[01;34m\] \w'; fi) \$([[ \$? != 0 ]] && echo \"\[\033[01;31m\]:(\[\033[01;34m\] \")\[\033[1;31m\]\$(parse_git_branch)\[\033[01;34m\]\\$ \[\033[00m\]"


export PS1

export LESS=eFRX



echo ".bash.rc done"
