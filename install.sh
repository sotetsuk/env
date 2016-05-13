if [ -e ~/github ]; then
  echo "~/github exists"
else
  echo "mkdir ~/github"
  mkdir ~/github
fi

if [ ! -e ~/github/env ]; then
  cd ~/github; git clone https://github.com/sotetsuk/env
else
  cd ~/github/env; git pull;
fi

echo "sh ~/github/env/brew.sh"
sh ~/github/env/brew.sh

if ! cat ~/.zshrc | grep alias.sh > /dev/null 2>&1 ; then
  echo "setting alias"
  echo "\n# import alias setting\nsource ~/github/env/alias.sh" >> ~/.zshrc
fi

if ! cat ~/.zshrc | grep path.sh > /dev/null 2>&1 ; then
  echo "setting path"
  echo "\n# import path setting\nsource ~/github/env/path.sh" >> ~/.zshrc
fi

if [ ! -e ~/.pypirc ]; then
  cp ~/github/env/dotfiles/.pypirc ~/
  echo "** PLEASE SET YOUR REAL USERNAME AND PASSWORD **"
fi

source ~/.zshrc
