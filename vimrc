" vimrc


filetype off
filetype plugin indent off


" dein Scripts -----------------------------

if &compatible
	set nocompatible  " Be iMproved
endif

" Required:
set runtimepath+=/home/taku/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/taku/.vim/dein')
	call dein#begin('/home/taku/.vim/dein')

	" Let dein manage dein
	" Required:
	call dein#add('/home/taku/.vim/dein/repos/github.com/Shougo/dein.vim')

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
set colorcolumn=81

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
noremap <down> adown
noremap <left> aleft
noremap <right> aright

noremap <Space> ah<lf>o<cr>g<lf>e<c-[>

syntax enable
filetype plugin indent on
