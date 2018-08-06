set nocompatible
set nu
filetype off


" installing vim-plug in case it doesn't exists
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'vim-scripts/Pydiction'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'tmhedberg/SimpylFold'
Plug 'nelstrom/vim-markdown-preview'
Plug 'jtratner/vim-flavored-markdown'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'OrangeT/vim-csharp'
call plug#end()

filetype plugin indent on

let g:SymplyFold_docstric_preview=1
let g:ycm_autoclose_preview_window_after_completion=1

let mapleader="\<space>"

map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let NERDTreeIgnore=['\.pyc$', '\~$']

set noswapfile

" turning on systemwide powerline

python << EOF
from powerline.vim import setup as powerline_setup
powerline_setup()
del powerline_setup
EOF

" support for virtualenv
python << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	sys.path.insert(0, project_base_dir)
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

autocmd FileType python set omnifunc=pythoncomplete#Complete

" ------------- PEP8 ---------

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set tabstop=4

au BufRead,BufNewFile *.py,.*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4 
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s/+$/

highlight BadWhitespace ctermbg=red guibg=red

au BufRead,BufNewFile *.py,*.pyw set textwidth=80
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

set encoding=utf-8


let python_highlight_all=1
syntax on 

autocmd FileType python set autoindent

set backspace=indent,eol,start

autocmd FileType python set foldmethod=indent

nnoremap <space> za

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
set cursorcolumn

