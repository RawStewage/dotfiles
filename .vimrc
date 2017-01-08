set nocompatible              " be iMproved, required
filetype off                  " required

"Better Leader
let mapleader = "\<space>"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"

Plugin 'tpope/vim-sensible'
Plugin 'rails.vim'
Plugin 'vimscript'
Plugin 'wookiehangover/jshint.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'wincent/Command-T'
Plugin 'junegunn/fzf'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ngmy/vim-rubocop'
Plugin 'briancollins/vim-jst'
Plugin 'AndrewRadev/vim-eco'
Plugin 'godlygeek/tabular'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'



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

"Get your tabs right man
set tabstop=2
set shiftwidth=2
set expandtab

"Nerd tree config
"Open when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Add a nerdtree hot key
map <leader>n :NERDTreeToggle<CR>

"Close vim when only buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Spelling hot key
set spelllang=en_us
"map <leader>s :setlocal spell!

"Better pane movements
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"Better easy motion stuff from the tutorial
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Fuzzy Finder
nmap <Leader>t :FZF<CR>

" Stop wit that
set wildignore+=client/tmp

" Line numbers
set number

"File encoding
set encoding=utf-8

"Remove all trailing whitespace by pressing leader m
nnoremap <Leader>m :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>



"Rubocop
"let g:syntastic_ruby_checkers=['rubocop', 'mri']
"let g:syntastic_ruby_rubocop_exec='rubocop'
"let g:syntastic_ruby_exec='ruby'
