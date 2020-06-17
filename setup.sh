if [ "$(uname)" = "Darwin" ]; then
    echo "> Install homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "> brew update and install basic packages"
    brew update
    brew install zsh wget git cmake jq pv htop tmux tree colordiff glances python python3 fzf zplug macvim
    echo "> Copy zshrc for osx"
    cp ~/.dotfiles/zsh/zshrc_osx ~/.zshrc
elif [ "$(uname)" = "Linux" ]; then
    echo "> apt update and install basic packages"
    sudo apt update
    sudo locale-gen UTF-8
    sudo apt install -y zsh git openjdk-8-jre build-essential cmake jq pv htop tmux tree vim-nox colordiff python-dev python3-dev
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    cd && ~/.fzf/install
    echo "> Copy zshrc for linux"
    cp ~/.dotfiles/zsh/zshrc_linux ~/.zshrc
    echo "> Install zplug"
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

echo "> Copy other dotfiles"
cp ~/.dotfiles/git/gitconfig ~/.gitconfig
cp ~/.dotfiles/git/gitignore ~/.gitignore
cp ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
cp ~/.dotfiles/vim/vimrc ~/.vimrc
cp ~/.dotfiles/bash/bash_profile ~/.bash_profile

echo "> Install miniconda"
if [ "$(uname)" = "Darwin" ]; then
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
    bash Miniconda3-latest-MacOSX-x86_64.sh -b
    rm Miniconda3-latest-MacOSX-x86_64.sh
elif [ "$(uname)" = "Linux" ]; then
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
    bash Miniconda3-latest-Linux-x86_64.sh -b
    rm Miniconda3-latest-Linux-x86_64.sh
fi

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

if [ "$(uname)" = "Linux" ]; then
    echo "> Install Docker"
    sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
    sudo apt-get update
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io

    echo "> Install Docker Compose"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

    echo "> Add user to docker group"
    sudo usermod -aG docker admin
fi
