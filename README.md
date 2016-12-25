# dotfiles
`$ git clone https://github.com/ifengc/dotfiles ~/.dotfiles`


## vimrc
1. Set up [Vundle](https://github.com/VundleVim/Vundle.vim):
`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. `$ ln -sf ~/.dotfiles/.vimrc ~/.vimrc`

3. Launch `vim` and run `:PluginInstall`

## .gitignore .gitconfig .tmux.conf
1. `$ ln -sf ~/.dotfiles/.gitignore ~/.gitignore`
2. `$ ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf`
3. `$ cp ~/.dotfiles/.gitconfig ~/`
