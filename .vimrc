set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/badwolf'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'frazrepo/vim-rainbow'
Plugin 'preservim/nerdcommenter'
"Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'dracula/vim',{'name':'dracula'}
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'modess/vim-phpcolors'
Plugin 'StanAngeloff/php.vim'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'calebredd/Tabmerge'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'arcticicestudio/nord-vim'
"Plugin 'miles/ack.vim'
Plugin 'zivyangll/git-blame.vim'

call vundle#end()

if (has("termguicolors"))
	set termguicolors
endif

filetype plugin indent on

syntax enable
colorscheme nord
"set background=dark
set mouse+=a
"set paste
set clipboard=unnamed
set autoread
set autoindent
set smartindent
set number
set relativenumber
set wrap linebreak nolist
set encoding=utf-8
set wildmenu
set laststatus=2
set backspace=indent,eol,start
set ruler
set nohlsearch
set visualbell
set tabstop=2
set shiftwidth=2
set softtabstop=2
set timeoutlen=1200
set ttimeoutlen=0
set noshowmode
set incsearch
set cursorline
set t_Co=256
set scrolloff=5
set cmdheight=2
set history=1000
set undolevels=1000
cnoreabbrev vex :Vexplore!  
cnoreabbrev te :Texplore  
cnoreabbrev tex :Texplore  
imap jk <ESC>
imap ii <ESC>
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap B ^
nnoremap E $
let g:lightline={
			\'colorscheme':'one',
			\}
"let g:rainbow_active=0
"let g:indent_guides_start_level=3
"let g:indent_guides_color_change_percent = 5
"let g:indent_guides_enable_on_vim_startup = 1

"if excecutable('ag')
"		let g:ackprg = 'ag --vimgrep'
"endif

"set directory=~/.vim/tmp//
autocmd! bufwritepost .vimrc source %
autocmd VimEnter * :so $MYVIMRC
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
"let g:netrw_winsize = 15
function! MergeTab()
	let bufnums = tabpagebuflist()
	hide tabclose
	topleft vsplit
	for n in bufnums
		execute 'sbuffer ' . n
		wincmd _
	endfor
	wincmd t
	quit
	wincmd =
endfunction
command! MergeTab call MergeTab()
