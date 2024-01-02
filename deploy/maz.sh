#!/bin/sh

pkill -f maz.dev
cd ../maz.dev
git stash
git pull -f
sleep 5
ruby main.rb > /dev/null 2>&1 &
