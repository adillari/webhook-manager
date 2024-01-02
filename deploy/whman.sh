#!/bin/bash

echo "Deploying self"
sleep 8
pkill -f webhook-manager
if [ $? -eq 0 ]; then
  echo "Killed whman"
else
  echo "failed to kill whman"
fi
echo "Should be in same dir"
pwd
git stash
git pull -f
bundle install
ruby main.rb
