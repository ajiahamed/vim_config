" general stuff
filetype plugin indent on
syntax on
set title
set number
set nowrap
colorscheme default

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

" list ends here
call plug#end()

" other scripts
