echo "load .bash_profile"
#export ANDROID_HOME=/Applications/android-sdk
#export PATH=$PATH:/Users/tr/maven/bin:/Applications/android-sdk/platform-tools/

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source ~/.profile


#mac ports
export PATH="/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:$PATH"

source ~/.bashrc


if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi


alias k=kubectl

#source <(kubectl completion bash)
#source <(kubectl completion bash | sed 's/kubectl/k/g')

source /dev/stdin <<<"$(kubectl completion bash)"
source /dev/stdin <<<"$(kubectl completion bash | sed 's/kubectl/k/g')"


## kubectl completion bash | sed 's/kubectl/k/g' | > $(brew --prefix)/etc/bash_completion.d/k
## kubectl completion bash > $(brew --prefix)/etc/bash_completion.d/kubectl



#if [ -f $(brew --prefix)/bash_completion.d/kubectl ]; then
#. $(brew --prefix)/bash_completion.d/kubectl
#fi

#if [ -f $(brew --prefix)/bash_completion.d/k ]; then
#. $(brew --prefix)/bash_completion.d/k
#fi

source ~/.git-completion.bash

export PATH="$PATH:"/Applications/microchip/xc16/v1.26/bin""
export PATH="$PATH:"/Applications/microchip/xc32/v1.40/bin""
export PATH="$PATH:"/Applications/microchip/xc8/v1.36/bin""


# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/radut/google-cloud-sdk/path.bash.inc' ]; then source '/Users/radut/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/radut/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/radut/google-cloud-sdk/completion.bash.inc'; fi

source ~/docker.io
source ~/.maven-completion.bash


export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

# added by Anaconda2 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda2/etc/profile.d/conda.sh" ]; then
        . "/anaconda2/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/radu.toader/.sdkman"
[[ -s "/Users/radu.toader/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/radu.toader/.sdkman/bin/sdkman-init.sh"

export PATH="$PATH:"/Applications/microchip/xc8/v2.10/bin""

export PATH="$PATH:"/Applications/microchip/xc16/v1.41/bin""

export PATH="$PATH:"/Applications/microchip/xc32/v2.30/bin""

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/radut/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/radut/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/radut/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/radut/Downloads/google-cloud-sdk/completion.bash.inc'; fi

##
# Your previous /Users/radut/.bash_profile file was backed up as /Users/radut/.bash_profile.macports-saved_2020-11-20_at_01:47:38
##

# MacPorts Installer addition on 2020-11-20_at_01:47:38: adding an appropriate DISPLAY variable for use with MacPorts.
export DISPLAY=:0
# Finished adapting your DISPLAY environment variable for use with MacPorts.

