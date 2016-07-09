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

# bin
export PATH=~/bin:$PATH
export PATH=~/bin/go_appengine:$PATH # https://cloud.google.com/appengine/downloads

# direnv
export EDITOR=vi
eval "$(direnv hook zsh)"
