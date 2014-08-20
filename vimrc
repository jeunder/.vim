" ================================
" Status bar
set ls=2

" TAB
set shiftwidth=4
set tabstop=4
set expandtab

" Line Number
set number

" Highlight Search
set hlsearch

" ================================
" NeoBundle
" ================================
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
"NeoBundle 'Shougo/vimproc', {
" \ 'build' : {
" \     'windows' : 'make -f make_mingw32.mak',
" \     'cygwin' : 'make -f make_cygwin.mak',
" \     'mac' : 'make -f make_mac.mak',
" \     'unix' : 'make -f make_unix.mak',
" \    },
" \ }

" My Bundles here:
" Refer to |:NeoBundle-examples|.
"
" Note: You don't set neobundle setting in .gvimrc!

" ...
NeoBundle 'simplyzhao/cscope_maps.vim'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'guns/xterm-color-table.vim'

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

