set nocompatible
set nu 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

Plugin 'jtratner/vim-flavored-markdown'
Plugin 'nelstrom/vim-markdown-preview'

Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'

Plugin 'Valloric/YouCompleteMe'
Plugin 'klen/rope-vim'

Plugin 'ervandew/supertab'

Plugin 'tmhedberg/SimpylFold'


Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

call vundle#end()

filetype plugin indent on

let g:SimplyFold_docstring_preview=1


let g:ycm_autoclose_preview_window_after_completion=1


let mapleader="_"

map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

call togglebg#map("<F5>")


let NERDTreeIgnore=['\.pyc$', '\~$']

set noswapfile

py3 << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	sys.path.insert(0, project_base_dir)
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	exec(compile(open( activate_this ,"rb" ).read(), activate_this, 'exec'),dict(__file__ = activate_this))
EOF

autocmd FileType python set omnifunc=pythoncomplete#Complete

" ------- PEP8- -----

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
