#!/usr/bin/env bash

# Ruby installation
brew install ruby       # ruby core
brew install rbenv      # ruby version manager
brew install libyaml    # yaml parser
brew install libffi     # foreign function interface

# Set Ruby runtime
ruby-build 2.7.1 ~/.runtimes/Ruby27x