set nocompatible
set background=dark
set signcolumn=no
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set guifont=Fira\ Code:h12

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'dense-analysis/ale'

" Fuzzy
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'flazz/vim-colorschemes'

Plugin 'vim-ruby/vim-ruby'

" Git diffs
Plugin 'airblade/vim-gitgutter'

" Git commands
Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'thiagoalessio/rainbow_levels.vim'

" Spec
Plugin 'thoughtbot/vim-rspec'

" many plugins for react https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'

Plugin 'prettier/vim-prettier'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'styled-components/vim-styled-components'
Plugin 'jparise/vim-graphql'
Plugin 'neoclide/coc.nvim'

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

" Map leader
let mapleader=' '

" start NerdTree
autocmd VimEnter * NERDTree

set number

" no arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" RSpec confg
let g:rspec_command = '!run-rspec {spec}'
map <Leader>sf :call RunCurrentSpecFile()<CR>
map <Leader>sn :call RunNearestSpec()<CR>
map <Leader>sl :call RunLastSpec()<CR>
map <Leader>sa :call RunAllSpecs()<CR>

" Ale
let g:ale_linters = { 'ruby': ['rubocop'] }
let g:ale_fixers = {
\ 'ruby': ['rubocop'],
\}
" Format on Save
let g:ale_fix_on_save = 1

" so I can use backspace :3
:set backspace=indent,eol,start

" highlighting for specifc filetypes
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:coc_global_extensions = [
  \ 'coc-tsserver'
    \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

nnoremap <silent> K :call CocAction('doHover')<CR>
command! -nargs=0 Prettier :CocCommand prettier.formatFile
set clipboard=unnamedplus
