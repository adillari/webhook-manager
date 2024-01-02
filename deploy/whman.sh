#!/bin/sh

sleep 5
pkill -f webhook-manager
git stash
git pull -f
bundle install
ruby main.rb
