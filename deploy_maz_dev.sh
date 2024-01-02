#!/bin/bash

pkill -f maz.dev
cd ../maz.dev
git pull -f
ruby main.rb > /dev/null 2>&1 &
