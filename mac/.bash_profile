echo "load .bash_profile"
#export ANDROID_HOME=/Applications/android-sdk
#export PATH=$PATH:/Users/tr/maven/bin:/Applications/android-sdk/platform-tools/

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source ~/.profile


#mac ports
export PATH="/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin/:/usr/local/bin:/usr/local/sbin:$PATH"
# brew cellar
export PATH="/usr/local/Cellar/:$PATH"

source ~/.bashrc

source ~/.git-completion.bash

export PATH="$PATH:"/Applications/microchip/xc16/v1.26/bin""
export PATH="$PATH:"/Applications/microchip/xc32/v1.40/bin""
export PATH="$PATH:"/Applications/microchip/xc8/v1.36/bin""


# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/radut/google-cloud-sdk/path.bash.inc' ]; then source '/Users/radut/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/radut/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/radut/google-cloud-sdk/completion.bash.inc'; fi

source ~/.maven-completion.bash
source ~/.kubectl-completion.bash

export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/radu.toader/.sdkman"
[[ -s "/Users/radu.toader/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/radu.toader/.sdkman/bin/sdkman-init.sh"
