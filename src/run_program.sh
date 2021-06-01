#!/bin/bash
echo "Hello, welcome to 'The Judged Parent Game'."
echo "Enjoy the game!"

gem install bundler
bundle install

cd src
ruby index.rb