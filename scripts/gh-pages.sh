#!/usr/bin/env bash

set -e

drush cron
drush tome:static -l http://drupal-static.bclement.com
rm -rf gh-pages
git clone git@github.com:Brian-Clement/drupal-tome-export.git gh-pages
cd gh-pages
git checkout master || git checkout -b master
cd ..
rm -rf gh-pages/*
cp -r html/* gh-pages/
cp CNAME gh-pages/CNAME
cd gh-pages
git add .
git -c commit.gpgsign=false commit -m 'Updating gh-pages site'
git push -u origin master