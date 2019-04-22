" ===========================
" VUNDLE SETTINGS
" ===========================
set nocompatible
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'nvie/vim-flake8'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fisadev/vim-isort'
Plugin 'motus/pig.vim'
" Plugin 'vim-syntastic/syntastic'
Plugin 'junegunn/vim-easy-align'
Plugin 'w0rp/ale'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
" Plugin 'edkolev/tmuxline.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ===========================
" COLOR SCHEME
" ===========================
syntax enable
set background=dark

" colorscheme solarized
" let g:solarized_termcolors=256


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
" let g:airline_theme='molokai'
let g:airline_theme='onehalfdark'
set laststatus=2


" ===========================
" ALE SETTINGS
" ===========================
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_flake8_args="--ignore=E501,W503"
let g:ale_python_flake8_options="--ignore=E501,W503"
let g:ale_python_pylint_option="disable=C0301"
let g:ale_linters = {
\   'python': ['pylint', 'flake8'],
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
set relativenumber      " show relative line numbers
set tabstop=4	        " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab	        " replace <TAB> with space that indentation will look same even at other editor
set shiftwidth=4        " autoindent tab width
set hlsearch	        " highlight search
set incsearch           " search as characters are entered
set ruler	            " display current position on status line
set backspace=2	        " allow backspace when insert on
set autoindent	        " enable automatic indentation
set smarttab            " insert tabs on the start of a line according to context
set cursorline	        " highlight current line
set undofile            " undo previous actions even after reopening a file
set visualbell          " replace bell with screen flash
" set number	            " show line numbers

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

au BufNewFile,BufRead *.yaml,*.yml set tabstop=2
au BufNewFile,BufRead *.yaml,*.yml set softtabstop=2
au BufNewFile,BufRead *.yaml,*.yml set shiftwidth=2
au BufNewFile,BufRead *.yaml,*.yml set expandtab
au BufNewFile,BufRead *.yaml,*.yml set autoindent


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
"endiif
