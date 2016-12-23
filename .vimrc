" ===========================
" VUNDLE SETTINGS
" ===========================
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'derekwyatt/vim-scala'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'airblade/vim-gitgutter'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ===========================
" COLOR SCHEME
" ===========================
syntax enable

"set t_Co=256
"set background=dark

set background=dark
colorscheme solarized
let g:solarized_termcolors=256


" ===========================
" VIM-AIRLINE SETTINGS
" ===========================
let g:airline_theme='molokai'
set laststatus=2


" ===========================
" GITGUTTER SETTINGS
" ===========================
let g:gitgutter_enabled = 0


" ===========================
" GENERAL SETTINGS
" ===========================
set so=7        " set 7 lines to the cursor for j/k 
set number	" enable line number
set tabstop=8	" insert 4 spaces for a tab
set hlsearch	" highlight search
set ruler	" display current position on status line
set backspace=2	" allow backspace when insert on
set autoindent	" enable automatic indentation
set expandtab	" replace <TAB> with space that indentation will look same even at other editor
set smarttab    " insert tabs on the start of a line according to context


autocmd FileType Makefile set noexpandtab
autocmd FileType python,java,scala setlocal shiftwidth=4 tabstop=4
autocmd FileType c,cpp,cc,h  set cindent

" set cursorline	" highlight current line

" ===========================
" ENCODING SETTINGS
" ===========================
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

fun! ViewUTF8()
	set encoding=utf-8                                  
	set termencoding=big5
endfun

fun! UTF8()
	set encoding=utf-8                                  
	set termencoding=big5
	set fileencoding=utf-8
	set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
	set encoding=big5
	set fileencoding=big5
endfun

if exists('$TMUX')
        set term=screen-256color
endif
