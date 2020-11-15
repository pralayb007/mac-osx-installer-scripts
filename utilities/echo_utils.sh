#!/usr/bin/env bash

# Echo helper utils
# show text in green
function echo_green { echo -e '\033[1;32m'"$1"'\033[0m'; }
# show text in yellow
function echo_yellow { echo -e '\033[1;33m'"$1"'\033[0m'; }
# show text in red
function echo_red  { echo -e '\033[1;31m'"$1"'\033[0m'; }