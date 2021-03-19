echo "load .profile"
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export JAVA_HOME=`/usr/libexec/java_home -v 15`
export PATH=$PATH:$JAVA_HOME/bin
#export PATH=$PATH:~/.local/bin
export PATH=$PATH:/usr/local/mysql/bin

export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin

#PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(memory.py)"\t\033[m\033[38;5;55m$(uptime |sed "s/.*:\(.*\)/\1/g")\033[m $(get_git_changes)"'
PROMPT_COMMAND='history -a;echo -en "\033[38;5;46mload: $(uptime |sed "s/.*:\(.*\)/\1/g")\033[m $(get_git_changes)"'
#PROMPT_COMMAND='history -a;echo -en "\033[m$(get_git_changes)"'
export PROMPT_COMMAND

# Use this other PS1 string if you want \W for root and \w for all other users:
PS1="$(if [[ ${EUID} == 0 ]]; then echo -ne '\[\033[01;31m\]\n\h\[\033[01;34m\] \w'; else echo -ne '\[\033[01;32m\]\n\u@\h\[\033[01;34m\] \w'; fi) \$([[ \$? -ne 0 ]] && echo -ne \"\[\033[01;31m\]:(\[\033[01;34m\] \")\[\033[1;31m\]\$(parse_git_branch)\[\033[01;34m\]\\$ \[\033[00m\]"
#PS1="$(if [[ ${EUID} == 0 ]]; then echo -ne '\[\033[01;31m\]\h\[\033[01;34m\] \w'; else echo -ne '\[\033[01;32m\]\u@\h\[\033[01;34m\] \w'; fi) \$([[ \$? -ne 0 ]] && echo -ne \"\[\033[01;31m\]:(\[\033[01;34m\] \")\[\033[1;31m\]\$(parse_git_branch)\[\033[01;34m\]\\$ \[\033[00m\]"

export PS1

#source .pm2completion


export LESS="-X"
export CLICOLOR=1
#white background
#export LSCOLORS=ExFxCxDxBxegedabagacad
#you can use this if you are using a black background:
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


export PATH="$PATH:$HOME/.npm-packages/bin/"
export PATH="$PATH:$HOME/apache-maven/bin/"
export PATH="$PATH:$HOME/apache-jmeter/bin/"


export BASH_SILENCE_DEPRECATION_WARNING=1



export PATH="$PATH:"/Applications/microchip/xc8/v2.10/bin""

export PATH="$PATH:"/Applications/microchip/xc16/v1.41/bin""

export PATH="$PATH:"/Applications/microchip/xc32/v2.30/bin""
