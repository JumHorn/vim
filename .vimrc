" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" auto clang format when exit insert mode
let g:clang_format#code_style='google'
let g:clang_format#auto_format=1
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
			\ "ColumnLimit":0,
			\ "IndentWidth" : 4,
			\ "TabWidth" : 4,
			\ "UseTab": "Always",
            \ "BreakBeforeBraces" : "Allman"}

let skip_defaults_vim=1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1

"cpp syntax high light
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_simple_highlight = 1
let g:cpp_class_scope_highlight = 1

set nu
set ts=4
set sw=4
" set not fold when opening
set foldmethod=syntax
set foldlevelstart=99

set scrolloff=5

" set clipboard=unnamed
colo JumMac
" autocmd VimEnter * NERDTree
syntax on

" set commentary
autocmd FileType c nnoremap <expr><C-_> trim(getline('.'))[0:1] == '//' ? ":s;\s*//<cr>" : "^<insert>//<Esc>"
autocmd FileType cpp nnoremap <expr><C-_> trim(getline('.'))[0:1] == '//' ? ":s;\s*//<cr>" : "^<insert>//<Esc>"

" set key bindings
nmap <silent><F3> :exec("NERDTree ".expand('%:h'))<CR>
map <F4> :YcmCompleter FixIt<CR>
nnoremap - $
nnoremap <silent>gd :YcmCompleter GoTo<CR>

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'vim-script/taglist.vim'
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
