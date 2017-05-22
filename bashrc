
alias mkctags='ctags --c++-kinds=+p --fields=+iaS --extra=+q --langmap=asm:+.inc -R'
alias rmctags='rm -rf tags'

alias mkcscope.files='find \( -iname "*.c" -o -iname "*.h" -o -iname "*.cc" -o -iname "*.cpp" -o -iname "*.hpp" -o -iname "*.c++" -o -iname "*.h++" -o -iname "*.s" -o -iname "*.S" -o -iname "*.asm" -o -iname "*.inc" \) -a -exec realpath {} \; | sort -u > cscope.files'
alias mkcscope='echo -n "cscope file list ... " && mkcscope.files && echo "$(cat cscope.files | wc -l) files done" && echo -n "cscope ... " && cscope -Rbqk && echo "done"'
alias rmcscope='rm -rf cscope.files cscope.in.out cscope.out cscope.po.out'

alias mktags='mkctags && mkcscope'
alias rmtags='rmctags && rmcscope'

