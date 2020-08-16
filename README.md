# dotfiles

## For Mac OS
1. Install Xcode through AppStore

2. Inatall Xcode Command Line Tool `xcode-select --install`

3. Clone dotfiles. 
`git clone https://github.com/ifengc/dotfiles ~/.dotfiles`

4. Run the script

  ```
  cd .dotfiles
  chmod +x setup.sh
  ./setup.sh
  ```
  The script will 
    1. Install [Homebrew](https://brew.sh) and [zplug](https://github.com/zplug/zplug)
    2. Update brew and install formula
    3. Copy the dotfiles
    4. Install [miniconda](https://docs.conda.io/en/latest/miniconda.html)
    5. Install [Vim Vundle](https://github.com/VundleVim/Vundle.vim)
    6. Compile [YCM](https://github.com/ycm-core/YouCompleteMe)

5. Other sotfware and setting
    * MacOS
        - Add an iCloud account and sync Calendar, Find my Mac, Contacts etc.
        - Add battery show percentage symbols
        - Adjust Dock size and pop up
        - Check all Trackpad option and Three fingers drop in Accessibility -> Mouse & Trackpad -> Trackpad Options
        - Adjust keyboard and trackpad speed
    * Software
        - Install Alfred, set the hotkey to `Ctrl Space` and disable default Spotlight hotkey in Keyboard -> Shortcuts -> Spotlight
        - Install VS Code and Open the Command Palette (Shift + Cmd + P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH command.
        - Install iTerm2
            - In Appearance -> Dimming: Modify `Dimming amount`
            - In Profile -> Colors: Use Solarized Dark as color preset, change Background and ANSI Bright to black
            - In Profile -> Keys: Change `Left option` and `Right option` to `ESC+`
            - In Profile -> Terminal: Check `Unlimited scrollback`
            - In Profile -> Text: Check `Use a different font for non-ASCII text` and select `Hack Nerd Font`
            - In Keys: Add `ctrl-cmd-f` -> `Toggle Fullscreen` mapping
        - Install Docker
        - Install Typora
        - Config git
            - `git config --global core.excludesfile '~/.gitignore'`
        - Setup ssh key


## For Debian

1. Install git and zsh.
`sudo apt update && sudo apt install -y git zsh`

2. Clone dotfiles. 
`git clone https://github.com/ifengc/dotfiles ~/.dotfiles`

3. Setup script
`cd .dotfiles && zsh setup.sh`
