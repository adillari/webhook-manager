#!/bin/sh

pkill -f maz.dev
cd ../maz.dev
git stash
git stash clear
git pull -f
ruby main.rb > /dev/null 2>&1 &
