set nocompatible 
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree' 

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'flazz/vim-colorschemes'

Plugin 'w0rp/ale'

Plugin 'vim-ruby/vim-ruby'

call vundle#end()            
filetype plugin indent on   
syntax enable
colorscheme elrond

" start NerdTree
autocmd VimEnter * NERDTree

alias config='/usr/bin/git --git-dir=/Users/sean/.cfg/ --work-tree=/Users/sean'
