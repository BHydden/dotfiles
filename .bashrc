# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
  export LS_OPTIONS='--color=auto'
  eval "`dircolors`"
  alias ls='ls $LS_OPTIONS'
  alias ll='ls $LS_OPTIONS -l'
  alias l='ls $LS_OPTIONS -lA'
 
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

  alias tmux="TERM=screen-256color-bce tmux"
  alias MIT="npm install -g yarn && yarn install && npm run dev"
  alias g="git"
  # Git Aliases
  alias ga="git add"
  alias gaa="git add ."
  alias gau="git add -u"
  alias gb="git branch"
  alias gbd="git branch --delete"
  alias gc="git commit -m"
  alias gcs="git commit -S -m"
  alias gco="git checkout"
  alias gcob="git checkout -b"
  alias gcod="git checkout devel"
  alias gd="git diff"
  alias gf="git fetch"
  alias gfu="git fetch upstream"
  alias gm="git merge"
  alias gpl="git pull"
  alias gplu="git pull upstream"
  alias gps="git push"
  alias gpsu="git push"
  alias gs="git status"
  alias gst="git stash"


  GPG_TTY=$(tty)
  export GPG_TTY

  if [ -f "${HOME}/.gnupg/.gpg-agent-info" ]; then
    . "${HOME}/.gnupg/.gpg-agent-info"
    export GPG_AGENT_INFO
  fi

  source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
