echo "load .profile"
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export JAVA_HOME=`/usr/libexec/java_home -v 11`
export PATH=$PATH:$JAVA_HOME/bin
#export PATH=$PATH:~/.local/bin
export PATH=$PATH:/usr/local/mysql/bin

export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin

PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(memory.py)"\t\033[m\033[38;5;55m$(uptime |sed "s/.*:\(.*\)/\1/g")\033[m $(get_git_changes)"'
export PROMPT_COMMAND

# Use this other PS1 string if you want \W for root and \w for all other users:
PS1="$(if [[ ${EUID} == 0 ]]; then echo -ne '\[\033[01;31m\]\n\h\[\033[01;34m\] \w'; else echo -ne '\[\033[01;32m\]\n\u@\h\[\033[01;34m\] \w'; fi) \$([[ \$? -ne 0 ]] && echo -ne \"\[\033[01;31m\]:(\[\033[01;34m\] \")\[\033[1;31m\]\$(parse_git_branch)\[\033[01;34m\]\\$ \[\033[00m\]"
#PS1="$(if [[ ${EUID} == 0 ]]; then echo -ne '\[\033[01;31m\]\h\[\033[01;34m\] \w'; else echo -ne '\[\033[01;32m\]\u@\h\[\033[01;34m\] \w'; fi) \$([[ \$? -ne 0 ]] && echo -ne \"\[\033[01;31m\]:(\[\033[01;34m\] \")\[\033[1;31m\]\$(parse_git_branch)\[\033[01;34m\]\\$ \[\033[00m\]"

export PS1

#source .pm2completion



#eval "$(docker-machine env default)"

#bash /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh

#!/bin/bash

VM=default
DOCKER_MACHINE=/usr/local/bin/docker-machine
VBOXMANAGE=/Applications/VirtualBox.app/Contents/MacOS/VBoxManage

BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m'

unset DYLD_LIBRARY_PATH
unset LD_LIBRARY_PATH

#clear

if [ ! -f $DOCKER_MACHINE ] || [ ! -f $VBOXMANAGE ]; then
  echo "Either VirtualBox or Docker Machine are not installed. Please re-run the Toolbox Installer and try again."
fi

#$VBOXMANAGE showvminfo $VM &> /dev/null
#VM_EXISTS_CODE=$?

#if [ $VM_EXISTS_CODE -eq 1 ]; then
#  $DOCKER_MACHINE rm -f $VM &> /dev/null
#  rm -rf ~/.docker/machine/machines/$VM
#  $DOCKER_MACHINE create -d virtualbox --virtualbox-memory 2048 --virtualbox-disk-size 204800 $VM
#fi

function startDockerMachine(){

    $DOCKER_MACHINE start $VM
    yes | $DOCKER_MACHINE regenerate-certs $VM

}


#VM_STATUS=$($DOCKER_MACHINE status $VM 2>&1)
#if [ "$VM_STATUS" != "Running" ]; then
#    echo "Docker machine not running"
    #$DOCKER_MACHINE start $VM
    #yes | $DOCKER_MACHINE regenerate-certs $VM
#else
#eval $($DOCKER_MACHINE env --shell=bash $VM)
#echo
#echo -e "${BLUE}docker${NC} is configured to use the ${GREEN}$VM${NC} machine with IP ${GREEN}$($DOCKER_MACHINE ip $VM)${NC}"
#echo
#fi

export LESS="-X"
export CLICOLOR=1
#white background
#export LSCOLORS=ExFxCxDxBxegedabagacad
#you can use this if you are using a black background:
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

source docker.io

export PATH="$PATH:$HOME/.npm-packages/bin/"
export PATH="$PATH:$HOME/apache-maven/bin/"
export PATH="$PATH:$HOME/apache-jmeter/bin/"
alias k=kubectl
