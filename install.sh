if [-e ~/github]; then
  echo "mkdir ~/github"
  mkdir ~/github
else
  echo "~/github exists"
fi

if [! -e ~/github/env]; then
  git clone https://github.com/sotetsuk/env
else
  echo "~/github/env exists"
fi

echo "./sh ~/github/env/brew.sh"
./sh ~/github/env/brew.sh

if cat ~/.zshrc | grep alias.sh == 0; then
  echo "setting alias"
  echo "\n# import alias setting\nsource ~/github/env/alias.sh" >> ~/.zshrc
fi

if cat ~/.zshrc | grep path.sh == 0; then
  echo "setting path"
  echo "\n# import path setting\nsource ~/github/env/path.sh" >> ~/.zshrc
fi
