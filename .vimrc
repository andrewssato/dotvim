set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" """"""""""""""""""""
" Plugins para o Editor 
" """""""""""""""""""""
"
" Navegacao de arquivos
Plugin 'git@github.com:kien/ctrlp.vim.git'
let g:ctrlp_map = '<c-p>'

" Arvore de arquivos
Plugin 'git@github.com:scrooloose/nerdtree.git'
map <Leader>S <ESC>:NERDTreeToggle<CR>
map <Leader>s <ESC>:NERDTreeFind<CR>
let NERDTreeShowHidden=1"

" Sintax
Plugin 'git@github.com:vim-syntastic/syntastic.git'

" Snsere caracteres em torno da palavra
Plugin 'git@github.com:tpope/vim-surround.git'

" Git
Plugin 'git@github.com:tpope/vim-fugitive.git'

" Cores no vim
Plugin 'git@github.com:altercation/vim-colors-solarized.git'

" Barra de status
Plugin 'git@github.com:vim-airline/vim-airline.git'
let g:airline#extensions#tabline#enabled = 1
Plugin 'vim-airline/vim-airline-themes'

" Highlight em  palavras semelhantes
Plugin 'git@github.com:qstrahl/vim-matchmaker.git'
let g:matchmaker_enable_startup = 1

" """""""""""""""""" 
" Plugins para Codigo
" """""""""""""""""""
"
" Tabulaacao, alinhamento de codigo
Plugin 'git@github.com:godlygeek/tabular.git'
nmap <leader>t= :Tab /=<CR>
vmap <leader>t= :Tab /=<CR>
nmap <leader>t: :Tab /:\zs<CR>
vmap <leader>t: :Tab /:\zs<CR>

" Sintax javascript
Plugin 'git@github.com:pangloss/vim-javascript.git'

" Autocomplete html
Plugin 'git@github.com:mattn/emmet-vim.git'
" Call Emmet with ctrl + ,, 
let g:user_emmet_leader_key=','

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

" """"""""""""""
" Editor configs 
" """"""""""""""
"
set noswapfile

" Clipboard
set clipboard=unnamed

set encoding=utf-8
set et              " Troca tabs por espaços
set nu              " Mostra o número de linhas
set ai              " Faz o auto tab/auto indent
set cursorline      " Destaca a linha atual

" Cores
syntax enable
set background=dark
colorscheme solarized

" Som beep de erro no vim  
set belloff=all

" Indent Settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" 90 Column
set textwidth=90
set colorcolumn=+1

" Highlight Whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set scrolloff=10 " limita 10 linhas para navegar up e down
set showcmd " mostra teclas de comando na barra airline
set spelllang=pt " set dictionary

nmap <leader>ga :set foldmethod=indent <CR>
nmap <leader>oa :set foldmethod=marker <CR>
nmap <leader>t :bn <CR>
nmap <leader>T :bp <CR>
