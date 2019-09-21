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
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
call plug#end()

"Key bindings
map <C-n> :NERDTreeToggle<CR>

"Manual config
syntax on
set number 
color dracula
set t_Co=256

"autocmnd groups 
augroup numbertoggle "toggles between relative and absolute line numbers. 
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber   "relative during NORMAL mode 
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber "abosulute during INSERT mode
augroup END


"less agressive eslint set up
let g:ale_sign_error = '✘' " Less aggressive than the default '>>'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

"prettier config
"when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


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

