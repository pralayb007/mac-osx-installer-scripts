#!/usr/bin/env bash

# Python installation
brew install python
brew install python3
brew install pyenv

# Python runtime setting
python-build 3.6.10 ~/.runtimes/Python36
python-build 3.7.7 ~/.runtimes/Python37
python-build 3.8.3 ~/.runtimes/Python38