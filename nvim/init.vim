call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'vim-syntastic/syntastic'
  Plug 'bluz71/vim-moonfly-colors'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'leafgarland/typescript-vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
call plug#end()


" Font
" set anti enc=utf-8
set guifont=Source\ Code\ Pro\ 11

" Theme
let g:molokai_original = 0 
set termguicolors
set background=dark
colorscheme molokai-custom

" Tab width
set tabstop=2 shiftwidth=2

" Syntastic defaults https://github.com/vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" underline 
hi clear CursorLine
hi CursorLine gui=underline cterm=underline

" autostart nerdtree
autocmd VimEnter * NERDTree | wincmd p

" autoclose nerdtree if its the last open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
