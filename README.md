# dotfiles

Setup from clean install 

```bash
apt-get install git
apt-get install curl
apt-get install vim
git clone https://github.com/BHydden/dotfiles.git ~/dotfiles
ln -s <destination file or directory> <name of the symlink> # do for all dotfiles
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall # install vim plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# type this in terminal if tmux is already running
$ tmux source ~/.tmux.conf
prefix - I (captial I) # install tmux plugins
```
