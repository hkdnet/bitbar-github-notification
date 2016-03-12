#!/usr/local/bin/zsh
cd $(ghq list -p -e hkdnet/bitbar-github-notification)
~/.anyenv/envs/rbenv/shims/ruby main.rb
