" vimrc


filetype off
filetype plugin indent off


" dein Scripts -----------------------------

if &compatible
	set nocompatible  " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME . '/.vim/dein')
	call dein#begin($HOME . '/.vim/dein')

	" Let dein manage dein
	" Required:
	call dein#add($HOME . '/.vim/dein/repos/github.com/Shougo/dein.vim')

	" Add or remove your plugins here:
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')

	" You can specify revision/branch/tag.
	call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
"filetype plugin indent on
"syntax enable
" There are same lines at the bottom.

" If you want to install not installed plugins on startup.
"if dein#check_install()
"	call dein#install()
"endif

" End dein Scripts -------------------------


set encoding=utf-8
set fileformat=unix
set number
set ruler
set colorcolumn=101
set belloff=all

hi Comment ctermfg=Cyan

filetype on

function! Hello()
	echo "hello, world"
endfunction

command! Hello call Hello()

function! HelloWithName(name)
	echo "hello, " . a:name
endfunction

command! -nargs=* HelloWithName call HelloWithName(<f-args>)

noremap <C-h> ahello, world<Esc>
" normal mode

inoremap <C-h> hello, world
" insert mode

noremap <up> aup
noremap <left> aleft
noremap <right> aright

syntax enable
filetype plugin indent on
