#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

for script in ~/.dotfiles/scripts/*; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR

cp ~/.dotfiles/.gitconfig ~/.gitconfig

git config --global alias.fo "git fetch origin"
git config --global alias.push "git push"
git config --global alias.pull "git pull"
git config --global alias.gst "git status"
git config --global alias.gaa "git add --all"
git config --global alias.ammend "git commit -a --amend"
