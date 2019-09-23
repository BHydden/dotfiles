# dotfiles

Setup from clean install 

```bash
apt-get install git
apt-get install curl
apt-get install vim
git clone https://github.com/BHydden/dotfiles.git ~/dotfiles
ln -s <destination file or directory> <name of the symlink> # do for all dotfiles
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
