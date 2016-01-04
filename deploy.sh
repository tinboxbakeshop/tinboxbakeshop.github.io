#!/bin/bash

# Github pages deploy script for use with Travis CI

# Setup bash properties
set -o errexit -o nounset -e

# Don't build Pull Requests
if [ ${TRAVIS_PULL_REQUEST} == "true" ]; then
    echo "Pull Request found. Exiting build."
    exit 0
fi

# If we didn't exist lets start the build
bundle exec jekyll build

# Remove prior deploy directory
rm -rf ../tinboxbakeshop.github.io.master

# Clone the master branch into the deploy directory
git clone -b master --single-branch https://${GH_TOKEN}@github.com/tinboxbakeshop/tinboxbakeshop.github.io.git ../tinboxbakeshop.github.io.master

# Copy the Build to the master deploy branch
cp -R .tmp/* ../tinboxbakeshop.github.io.master

# commit and push the build
cd ../tinboxbakeshop.github.io.master
git config user.email "david.lin@maxajen.com"
git config user.name "David Lin"
git add -A .
git diff-index --quiet HEAD || git commit -a -m "Travis Deploy #${TRAVIS_BUILD_NUMBER}"
git push --quiet origin master > /dev/null 2>&1

