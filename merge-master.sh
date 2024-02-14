#!/bin/bash

# this script just checks out master, pulls latest and tries to merge latest master in your current branch
# USAGE: bash merge-master

echo "Checking out master"

current=$(git branch --show-current)

git checkout master
git pull

echo "Checking out $current"
git checkout $current
git merge master
