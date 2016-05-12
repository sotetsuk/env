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
