# config

All my "home" stuff in one repo. Original idea from [Hacker News thread](https://news.ycombinator.com/item?id=11070797) and good explained in [this tutorial](https://www.atlassian.com/git/tutorials/dotfiles).

## Installation

```bash
curl -o- https://raw.githubusercontent.com/cassln/config/master/cfg-install.sh | bash
```

Or manual:

```bash
git clone --bare git@github.com:cassln/config.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config submodule init && config submodule update
```