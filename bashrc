
alias mkctags='ctags --c++-kinds=+p --fields=+iaS --extra=+q --langmap=asm:+.inc -R'
alias rmctags='rm -rf tags'

alias mkcscope='find -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.hpp" -o -name "*.c++" -o -name "*.h++" -o -name "*.s" -o -name "*.S" -o -name "*.asm" -o -name "*.inc" > cscope.files && cscope -Rbqk'
alias rmcscope='rm -rf cscope.files cscope.in.out cscope.out cscope.po.out'

alias mktags='mkctags && mkcscope'
alias rmtags='rmctags && rmcscope'

