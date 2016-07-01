# pyenv
export PYENV_ROOT="${HOME}/.pyenv"
export PATH=${PYENV_ROOT}/bin:$PATH
eval "$(pyenv init -)"

# gopath
if [ ! -e ~/gopath ]; then
  mkdir ~/gopath
fi
export GOPATH=~/gopath
export PATH=$GOPATH/bin:$PATH

# GAE/GO sdk (download from https://cloud.google.com/appengine/downloads#Google_App_Engine_SDK_for_Go)
export PATH=~/go_appengine:$PATH
