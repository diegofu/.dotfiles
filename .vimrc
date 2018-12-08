set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Scala
Plugin 'derekwyatt/vim-scala'
" JSX
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" ctrlp
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
" highlight whitespace
Plugin 'ntpeters/vim-better-whitespace'
" Go Syntax
Plugin 'fatih/vim-go'
" Nerdtree
Plugin 'scrooloose/nerdtree'
" Git wrapper
Plugin 'https://github.com/tpope/vim-fugitive'
" Node.vim
Plugin 'moll/vim-node'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a

syntax on
let g:gruvbox_termcolors=16
colorscheme gruvbox

set term=xterm-256color
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set number
set splitright
set ruler

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" inverse tab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif

" Ignore dirs when CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" Show hidden file in NERDTree
let NERDTreeShowHidden=1
