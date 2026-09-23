# enable git completion in either zsh or bash
if [ $SHELL = '/bin/zsh' ]; then
  autoload -Uz compinit && compinit
fi

source ~/dotfiles/.helpers
source ~/dotfiles/.git-aliases


if tmux info &> /dev/null; then
  echo "Loaded ~/dotfiles/.tmux.conf"
  tmux source-file ~/dotfiles/.tmux.conf
fi
