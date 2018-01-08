# vim-config
## Install

1.  Clone to `~/vim_vundle`
```
git clone https://github.com/clemens321/vim-config.git ~/vim_vundle
```
Maybe you may clone to `~/.vim` directly.

2.  Create symlinks
```
rm -r ~/.vim ~/.vimrc
ln -s vim_vundle ~/.vim
ln -s vim_vundle/vimrc ~/.vimrc
```

When using .vim directly, use `ln -s .vim/vimrc ~/.vimrc`

3.  Update submodules
```
cd vim_vundle
git submodule update --init bundle/vundle
```

4.  Install other, not correctly '.gitmodule'd, Vundle modules
```
vim +VundleInstall
```
