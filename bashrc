
mkcscope_file_filter='
*.S
*.asm
*.c
*.c++
*.cc
*.cpp
*.h
*.h++
*.hpp
*.inc
*.py
*.s
'

function mkcscope_find_argument() {
    local args=""
    for i in ${mkcscope_file_filter}; do
        if [ ! "${args}" ]; then
            args+="-iname $i"
        else
            args+=" -o -iname $i"
        fi
    done
    echo ${args}
}

function mkcscope_file_list() {
    find \( $(mkcscope_find_argument) \) -a -exec realpath {} \; |
        sed "s/^$(pwd | sed 's/\//\\\//g')\/\(.*\)$/\1/g" |
        sort -u > cscope.files
}

alias mkctags='ctags --c++-kinds=+p --fields=+iaS --extra=+q --langmap=asm:+.inc -R'
alias rmctags='rm -rf tags'

alias mkcscope='echo -n "cscope file list ... " && mkcscope_file_list && echo "$(cat cscope.files | wc -l) files done" && echo -n "cscope ... " && cscope -Rbqk && echo "done"'
alias rmcscope='rm -rf cscope.files cscope.in.out cscope.out cscope.po.out'

alias mktags='mkctags && mkcscope'
alias rmtags='rmctags && rmcscope'

# python autocomplete
export PYTHONSTARTUP=~/.vim/pythonrc

