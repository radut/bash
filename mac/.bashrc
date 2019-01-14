
#echo "load .bashrc " // dont echo in this file, scp won't work anymore
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
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


alias grep="grep --color"


export JAVA_OPTS="-XX:MaxPermSize=512m -Xms256m -Xmx1024m -Xss28m -Xmn24m"


export EDITOR=vim

export LESS=eFRX

export ANDROID_HOME="/Applications/android-sdk/"
export PATH="$PATH:$ANDROID_HOME/platform-tools/"
export PATH=$PATH:/usr/share/pk2


alias ij="open -a /Applications/IntelliJ\ IDEA.app/"
alias intelli=ij 
alias code="open -a /Applications/Visual\ Studio\ Code.app/"

#http://stackoverflow.com/questions/9457233/unlimited-bash-history
HISTSIZE=5000
HISTFILESIZE=5000
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
