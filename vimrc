" general stuff
filetype plugin indent on
syntax on
set title
set number
set nowrap
let g:loaded_matchparen=1

" default settings for any filetype
source ~/.vim/scripts/python.vim

" filetype specific stuff
au Filetype C source ~/.vim/scripts/linux.vim

" install vim-plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" where to place plugins
call plug#begin('~/.vim/plugged')

" list of plugins
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'

" list ends here
call plug#end()

" stuff to do after loading plugins
colorscheme crayon
