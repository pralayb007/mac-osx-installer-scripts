#!/usr/bin/env bash
# Echo helper utils
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; color_off='\033[0m'

# Echo helper utils
# show text in green
function echo_green { echo "$green""$1""$color_off"; }
# show text in yellow
function echo_yellow { echo "$yellow""$1""$color_off"; }
# show text in red
function echo_red  { echo "$red""$1""$color_off"; }