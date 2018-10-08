"this load the package manager if its not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"This is is the list of pluggins the packeage manager will load
call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
call plug#end()

"Key bindings
map <C-n> :NERDTreeToggle<CR>

"Manual config
syntax on
set number 
color dracula
set t_Co=256

"Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_mode_map = {
      \ 'n'  : "\ue28b ", 
      \ 'i'  : "\ufb4e ", 
      \ 'r'  : "\ufbd2 ", 
      \ 'R'  : "\ufbd2 ", 
      \ 'v'  : "\ufbce ", 
      \ 'V'  : "\ufbce ",
      \ '' : "\ufbce ",
      \ }

