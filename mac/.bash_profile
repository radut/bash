echo "load .bash_profile"
#export ANDROID_HOME=/Applications/android-sdk
#export PATH=$PATH:/Users/tr/maven/bin:/Applications/android-sdk/platform-tools/

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source ~/.profile

export PATH=/usr/local/mysql/bin:$PATH:/Applications/microchip/xc8/v1.32/bin

##
# Your previous /Users/tr/.bash_profile file was backed up as /Users/tr/.bash_profile.macports-saved_2014-10-18_at_12:36:20
##

# MacPorts Installer addition on 2014-10-18_at_12:36:20: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

source ~/.bashrc

##
# Your previous /Users/tr/.bash_profile file was backed up as /Users/tr/.bash_profile.macports-saved_2015-11-08_at_16:14:26
##

# MacPorts Installer addition on 2015-11-08_at_16:14:26: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#source /usr/local/git/contrib/completion/git-completion.bash

source ~/.git-completion.bash

export PATH="$PATH:"/Applications/microchip/xc16/v1.26/bin""

export PATH="$PATH:"/Applications/microchip/xc32/v1.40/bin""

export PATH="$PATH:"/Applications/microchip/xc8/v1.36/bin""

#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

##
# Your previous /Users/radut/.bash_profile file was backed up as /Users/radut/.bash_profile.macports-saved_2016-09-22_at_01:18:48
##

# MacPorts Installer addition on 2016-09-22_at_01:18:48: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/radut/google-cloud-sdk/path.bash.inc' ]; then source '/Users/radut/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/radut/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/radut/google-cloud-sdk/completion.bash.inc'; fi

. ~/.maven-completion.bash
. ~/.kubectl-completion.bash

export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

