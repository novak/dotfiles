# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brew packages via brewfile
brew bundle

# sync the dotfiles to the $HOME directory
make sync

# setup vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# launch vim and install plugins
vim -c ":PlugInstall | :q | :q"

# If usb key with secrets exists, copy them over.
if [ -d "/Volumes/SECRET" ]
then
    cd /Volumes/SECRET
    make sync
fi
