set nocompatible 
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree' 

" Fuzzy
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'flazz/vim-colorschemes'

Plugin 'w0rp/ale'

Plugin 'vim-ruby/vim-ruby'

" Git diffs
Plugin 'airblade/vim-gitgutter'

" Git commands
Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'



" Spaces & Tabs {{{
set tabstop=2
set expandtab " use spaces for tabs
set softtabstop=2 " 4 space tab
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}


call vundle#end()            
filetype plugin indent on   
syntax enable
colorscheme molokai

" start NerdTree
autocmd VimEnter * NERDTree
set number
