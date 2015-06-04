#!/bin/bash

packages=(
bower
coffee-script
coffeelint
concurrently
csslint
esformatter-braces
esformatter-jsx
eslint
eslint-plugin-react
hoxy
jsfmt
jshint
nesh
npm
npm-check-updates
)

function install_package {
  echo "Installing Node package: $1"
  npm ls -g --depth=0 --parseable $1 > /dev/null 2>&1 || npm install $1 -g
}

for package in ${packages[@]} ; do
  install_package $package
done
