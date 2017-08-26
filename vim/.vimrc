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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'nvie/vim-flake8'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'fisadev/vim-isort'
Plugin 'motus/pig.vim'
" Plugin 'vim-syntastic/syntastic'
Plugin 'junegunn/vim-easy-align'
Plugin 'w0rp/ale'

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
set background=dark

" colorscheme Tomorrow-Night
" set t_Co=256

colorscheme solarized
let g:solarized_termcolors=256


" ===========================
" VIM-EasyAlign SETTINGS
" ===========================
"normal usage: vmode: ga*|
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

"shortcut keys: \\
vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>


" ===========================
" VIM-AIRLINE SETTINGS
" ===========================
let g:airline_theme='molokai'
set laststatus=2


" ===========================
" ALE SETTINGS
" ===========================
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_flake8_args="--ignore=E501"
let g:ale_python_pylint_option="disable=C0301"
let g:ale_linters = {
\   'python': ['flake8'],
\}

" ===========================
" GITGUTTER SETTINGS
" ===========================
let g:gitgutter_enabled = 0


" ===========================
" JEDI-VIM SETTINGS
" ===========================
let g:jedi#auto_initialization = 0


" ===========================
" GENERAL SETTINGS
" ===========================
" set so=7        " set 7 lines to the cursor for j/k 
set number	" enable line number
set tabstop=4	" insert 4 spaces for a tab
set softtabstop=4
set shiftwidth=4
set hlsearch	" highlight search
set ruler	" display current position on status line
set backspace=2	" allow backspace when insert on
set autoindent	" enable automatic indentation
set expandtab	" replace <TAB> with space that indentation will look same even at other editor
set smarttab    " insert tabs on the start of a line according to context

autocmd FileType Makefile set noexpandtab
autocmd FileType c,cpp,cc,h  set cindent

" PEP8 indentation
let python_highlight_all = 1
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
" au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

" Web development
au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set softtabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set shiftwidth=2
au BufNewFile,BufRead *.js,*.html,*.css set expandtab
au BufNewFile,BufRead *.js,*.html,*.css set autoindent


au BufNewFile,BufRead *.xml set tabstop=2
au BufNewFile,BufRead *.xml set softtabstop=2
au BufNewFile,BufRead *.xml set shiftwidth=2
au BufNewFile,BufRead *.xml set expandtab
au BufNewFile,BufRead *.xml set autoindent


au BufNewFile,BufRead *.java,*.scala set tabstop=2
au BufNewFile,BufRead *.java,*.scala set softtabstop=2
au BufNewFile,BufRead *.java,*.scala set shiftwidth=2
au BufNewFile,BufRead *.java,*.scala set expandtab
au BufNewFile,BufRead *.java,*.scala set autoindent


set cursorline	" highlight current line

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

"if exists('$TMUX')
"    set term=xterm-256color
"endif
