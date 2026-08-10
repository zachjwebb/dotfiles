#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link() {
  local src="$DOTFILES/$1" dst="$HOME/$2"
  [ -e "$dst" ] && [ ! -L "$dst" ] && mv "$dst" "$dst.backup"
  ln -sfn "$src" "$dst"
  echo "linked $dst -> $src"
}

link bashrc      .bashrc
link vimrc       .vimrc
link tmux.conf   .tmux.conf
