#!/bin/sh

sleep 10
kill -9 $(lsof -i :7000 -t)
git stash
git stash clear
git pull -f
bundle install
ruby main.rb
