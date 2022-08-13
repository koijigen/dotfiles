call execute(expand('set runtimepath+=$PJT_HOME/dotfiles/.vim/autoload'))
runtime! plug.vim

set hlsearch 
set ignorecase 
set smartcase 
set wrapscan 



set cindent 
set shiftwidth=4 
set tabstop=4 
set formatoptions-=cro 
set backspace=indent,eol,start 



set clipboard=unnamed 
call execute(expand('set directory=$PJT_HOME/dotfiles/.vim/.swap'))
call execute(expand('set backupdir=$PJT_HOME/dotfiles/.vim/.backup'))
call execute(expand('set undodir=$PJT_HOME/dotfiles/.vim/.undo'))
call execute(expand('set viminfofile=$PJT_HOME/dotfiles/.vim/.viminfo'))
set undolevels=1000
set history=10000 
set dictionary& dictionary+=spell


let mapleader = "\<Space>"


noremap <Leader>p :bprevious<CR>
noremap <Leader>n :bnext<CR>


noremap <Leader>tn :tabnew<CR>
noremap <Leader>tc :tabclose<CR>
noremap <C-Tab> <C-PageDown>
noremap <C-S-Tab> <C-PageUp>


nnoremap <C-e> <ESC>
inoremap <C-e> <ESC>
vnoremap <C-e> <ESC>
cnoremap <C-e> <ESC>


noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


inoremap <C-b> <BS>
inoremap <C-d> <DEL>
inoremap <C-v> <C-k>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>



nnoremap <silent> <Space>.
\        :<C-u>edit $MYVIMRC<CR> 
nnoremap <silent> <Space>s.
\        :<C-u>source $MYVIMRC<CR>

nnoremap <silent> <Space>.m
\        :<C-u>edit $MYVIMRC.memo.md<CR> 


nnoremap <Space>v :<C-u>vertical belowright help<Space>

nnoremap <Space>h :<C-u>tab help<Space>





augroup help-buffer
	autocmd!
	autocmd BufWinEnter * if &buftype == 'help'
	set number relativenumber
augroup end


set list 
set listchars=tab:--\|,trail:_,eol:$ "


call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Initialize plugin system
call plug#end()
