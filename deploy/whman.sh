#!/bin/sh

sleep 5
pkill -f webhook-manager
git stash
git pull -f
bundle install
sleep 5
ruby main.rb
