# dotfiles

1. Install Xcode through AppStore

2. Inatall Xcode Command Line Tool `xcode-select --install`

3. Clone dotfiles.  
`git clone https://github.com/ifengc/dotfiles ~/.dotfiles`

4. Run the script

	```
	chmod +x osx_bootstrap
	./osx_bootstrap
	```
	The script will 
    1. Install [Homebrew](http://brew.sh/index_zh-tw.html)
    2. Update brew and install formula
    3. Install [oh my zsh](http://ohmyz.sh/)
    4. Install [Vundle](https://github.com/VundleVim/Vundle.vim)
    5. Link the dotfiles

5. Change the login shell to zsh.  
add /usr/local/bin/zsh to the last line of /etc/shells.  
`chsh -s /usr/local/bin/zsh`

5. Setup vim.  
Launch `vim` and run `:PluginInstall`
