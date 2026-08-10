# dotfiles

Personal configuration for bash, vim, and tmux, plus a reusable Makefile
template for C projects (-Wall -Wextra -std=c17, with ASan/UBSan and
valgrind targets).

## Install

    git clone git@github.com:YOURUSER/dotfiles.git ~/dotfiles
    cd ~/dotfiles && ./install.sh

install.sh symlinks the configs into $HOME, backing up any existing
non-symlink files as *.backup.

## Notes

Machine-specific settings and anything secret go in ~/.bashrc.local,
which is sourced by bashrc and gitignored.
