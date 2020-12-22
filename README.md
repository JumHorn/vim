# Vim Color
I like vim so much.
it's lazy for me to write a color scheme
all this things you can do with the website
http://bytefluent.com/vivify/

# Color type
I like the style of visual studio however I still can't create a one like that

# Vim Config

* auto complete(using youcompleteme)
* gd means goto the definition of the function based on youcompleteme
* F4 shows the syntax error checked by youcompleteme,or move cursor to the error line it will display a short error message for you
* NERD tree view directories with F3 ,quit with q
* jump to head of line with the key 0 and end of line with the key -
* ctrl+/ to comment and uncomment c/c++ file type

# installation

* replace the color folder and bundle folder in .vim directory

* replace .vimrc file in your home directory

* vundle
```shell
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
> https://github.com/VundleVim/Vundle.vim/blob/master/README.md

choose different url to speed up downloads
```vim
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Git plugin not hosted on GitHub
Plugin 'https://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
```

* build YouCompleteMe

current YouCompleteMe must be with C++17

~~* config .ycm_extra_conf.py in .vimrc~~
```shell
cp .ycm_extra_conf.py ~/.vim/
```
> https://github.com/ycm-core/YouCompleteMe

* apt install clang-format

# YouCompleteMe configuration for clang
this step is not nessary only if your YCM doesn't complete your code

1. find clang path
* clang
```shell
echo | clang -v -E -x c++ -
```

* gcc
```shell
echo | gcc -E -Wp,-v -s -
```

~~2. copy path to .ycm_extra_conf.py with isystem,path~~
