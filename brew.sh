if type brew > /dev/null 2>&1; then
  echo "brew exists"
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
fi
echo "updating brew"
brew update

cd ~/github/env

brew tap Homebrew/bundle
echo "install bundles"
brew bundle
