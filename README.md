# dotfiles

Setup from clean install 

```bash
apt install git
apt install curl
apt install vim
git clone https://github.com/BHydden/dotfiles.git ~/dotfiles
# do next line for all dotfiles
ln -s <destination file or directory> <name of the symlink>
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall # install vim plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# type this in terminal if tmux is already running
$ tmux source ~/.tmux.conf
# install tmux plugins
prefix - I (captial I)
```
