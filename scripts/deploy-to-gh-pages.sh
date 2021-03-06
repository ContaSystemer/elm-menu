#!/bin/bash

set -e

git checkout gh-pages
git pull origin gh-pages --no-edit
git merge master --no-edit
cd examples
make demo
cd ..
git add examples/site/
git commit -m 'Update gh-pages files'
git subtree push --prefix examples/site/ origin gh-pages
git checkout master
