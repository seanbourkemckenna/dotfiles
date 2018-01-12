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


call vundle#end()            
filetype plugin indent on   
syntax enable
colorscheme elrond

" start NerdTree
autocmd VimEnter * NERDTree
