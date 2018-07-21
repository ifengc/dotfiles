echo "> apt update and install basic packages"
sudo apt update
sudo apt install -y zsh git openjdk-8-jre build-essential cmake jq pv htop tmux tree vim-nox colordiff

echo "> Link the dotfiles"
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/git/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/bash/.bash_profile ~/.bash_profile
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

echo "> Install zplug and set zsh as default shell"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
source .zshrc

echo "> Install miniconda"
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b

echo "> Install vim vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "> Compiling YCM"
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
