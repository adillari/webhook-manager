#!/bin/bash

pkill maz.dev
cd ../maz.dev
ruby main.rb > /dev/null 2>&1 &
