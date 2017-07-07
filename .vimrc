set hlsearch
set incsearch
set ic
syntax on
set number

if has('win32') || has('win64')
  "set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
color evening
set guifont=Consolas:h10:cDEFAULT
set lines=999 columns=999
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
endif

augroup filetypedetect
	au BufRead,BufNewFile *.cginc,*.shader set filetype=c
	au BufRead,BufNewFile *.asm set filetype=nasm
augroup END

map <F4> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"https://github.com/junegunn/vim-plug"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()

