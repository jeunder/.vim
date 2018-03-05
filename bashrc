
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
    local newline_return_tab_to_space=$(echo "${mkcscope_file_filter}" |
                                        tr '\n\r\t' ' ')
    local insert_find_options=$(echo "${newline_return_tab_to_space}" |
                                sed "s/^ */'/;
                                     s/ *$/'/;
                                     s/  */' -o -name '/g;
                                     s/^/-name /;")
    echo "${insert_find_options}"
}

function mkcscope_file_list() {
    eval "find \( $(mkcscope_find_argument) \) -a -exec realpath {} \;" |
        sed "s/^$(pwd | sed 's/\//\\\//g')\/\(.*\)$/\1/" |
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

