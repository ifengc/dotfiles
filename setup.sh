if [ "$(uname)" = "Darwin" ]; then
    echo "> Install homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "> brew update and install basic packages"
    brew update
    brew install -y zsh wget git cmake jq pv htop tmux tree colordiff glances python3 fzf
    echo "> Copy zshrc for osx"
    cp ~/.dotfiles/zsh/.zshrc_osx ~/.zshrc
elif [ "$(uname)" = "Linux" ]; then
    echo "> apt update and install basic packages"
    sudo apt update
    sudo apt install -y zsh git openjdk-8-jre build-essential cmake jq pv htop tmux tree vim-nox colordiff python-dev python3-dev
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    cd && ~/.fzf/install
    echo "> Copy zshrc for linux"
    cp ~/.dotfiles/zsh/.zshrc_linux ~/.zshrc
fi

echo "> Copy other dotfiles"
cp ~/.dotfiles/git/.gitconfig ~/.gitconfig
cp ~/.dotfiles/git/.gitignore ~/.gitignore
cp ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
cp ~/.dotfiles/vim/.vimrc ~/.vimrc
cp ~/.dotfiles/bash/.bash_profile ~/.bash_profile

echo "> Install zplug and set zsh as default shell"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
source .zshrc

echo "> Install miniconda"
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
rm Miniconda3-latest-Linux-x86_64.sh -b

echo "> Install vim vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "> Compiling YCM"
cd ~/.vim/bundle/YouCompleteMe
if [ "$(uname)" = "Darwin" ]; then
    echo "> Install from homebrew python3"
    /usr/local/bin/python3 install.py --clang-completer
elif [ "$(uname)" = "Linux" ]; then
    echo "> Install from conda python"
    ./install.py --clang-completer
fi
