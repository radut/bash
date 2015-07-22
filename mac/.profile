
# MacPorts Installer addition on 2014-04-02_at_01:23:52: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

export JAVA_HOME=`/usr/libexec/java_home -v 1.8*`
export PATH=$PATH:$JAVA_HOME/bin

export PATH=$PATH:/Applications/microchip/xc8/v1.32/bin

alias avrora='java -jar /usr/local/avrora/avrora.jar'









PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(/usr/bin/memory.py)"\t\033[m\033[38;5;55m$(uptime |sed "s/.*:\(.*\)/\1/g")\033[m $(get_git_changes)"'

export PROMPT_COMMAND

# Use this other PS1 string if you want \W for root and \w for all other users:

PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\n\h\[\033[01;34m\] \w'; else echo '\[\033[01;32m\]\n\u@\h\[\033[01;34m\] \w'; fi) \$([[ \$? -ne 0 ]] && echo \"\[\033[01;31m\]:(\[\033[01;34m\] \")\[\033[1;31m\]\$(/usr/bin/parse_git_branch)\[\033[01;34m\]\\$ \[\033[00m\]"

export PS1

#source .pm2completion


