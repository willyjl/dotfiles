call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Townk/vim-autoclose'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'pineapplegiant/spaceduck'
Plug 'tomtom/tcomment_vim'
call plug#end()

colorscheme spaceduck
let g:airline_theme='spaceduck'

set nu rnu cursorline
set tabstop=2 shiftwidth=2 expandtab

map <C-n> :NERDTreeToggle<CR>
map <C-p> :GFiles<CR>
map <A-f> :GGrep<CR>

" navigate between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <A-]> gt
nnoremap <A-[> gT

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let NERDTreeShowHidden=1

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

" Switch relativenumber to norelativenumber on change window focus
autocmd WinEnter,FocusGained * :setlocal number relativenumber
autocmd WinLeave,FocusLost   * :setlocal number norelativenumber
