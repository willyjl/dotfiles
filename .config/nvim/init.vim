call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Townk/vim-autoclose'
Plug 'Yggdroot/indentLine'
call plug#end()

colorscheme seoul256

set nu rnu
set tabstop=2 shiftwidth=2 expandtab
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 

map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_map='<c-p>'

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

let g:airline_theme='luna'

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
