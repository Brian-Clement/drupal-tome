#!/usr/bin/env bash

set -e

drush cron -l https://brian-clement.github.io/drupal-tome-export
drush tome:static -l https://brian-clement.github.io/drupal-tome-export
rm -rf gh-pages
git clone git@github.com:Brian-Clement/drupal-tome-export.git gh-pages
cd gh-pages
git checkout master || git checkout -b master
cd ..
rm -rf gh-pages/*
cp -r html/* gh-pages/
# cp CNAME gh-pages/CNAME
cd gh-pages
git add .
git commit -m 'Updating gh-pages site'
git push -u origin master