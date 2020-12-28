.vim
====

git clone --recursive https://github.com/jeunder/.vim ~/.vim
cd ~/.vim
git submodule foreach git checkout master

ln -s ~/.vim/.tmux.conf ~/.tmux.conf
ln -s ~/.vim/vimrc ~/.vimrc

add following lines to ~/.bashrc
    if [ -f ~/.vim/bashrc ]; then
        . ~/.vim/bashrc
    fi

