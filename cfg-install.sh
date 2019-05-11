#!/bin/bash

git clone --bare git@github.com:cassln/config.git $HOME/.cfg

function config {
  git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

config checkout
if [ $? != 0 ]; then
  echo "Backing up pre-existing files..."
  config checkout 2>&1 | egrep "\t+" | awk {'print $1'} | \
    xargs -I{} sh -c 'mkdir -p "$(dirname .config-backup/{})"; mv {} .config-backup/{}'
  config checkout
fi;
echo "Checked out config."

echo "Initializing submodules..."
config submodule init
config submodule update
echo "Initialized submodules."

config config status.showUntrackedFiles no

function prompt-config-property {
  local value
  read -p "Enter git user $1 ($(config config user.$1)): " value </dev/tty

  if [[ ! -z "$value" ]]; then
    config config user.$1 $value
  fi
}

prompt-config-property name
prompt-config-property email

echo "Done."