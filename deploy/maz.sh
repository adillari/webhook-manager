#!/bin/bash

echo "Deploying maz.dev"

pkill -f maz.dev
if [ $? -eq 0 ]; then
  echo "Killed maz.dev"
else
  echo "maz.dev not running"
fi
cd ../maz.dev
echo "Should be in maz.dev"
pwd
git stash
git pull -f
ruby main.rb > /dev/null 2>&1 &
