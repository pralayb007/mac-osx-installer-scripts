#!/usr/bin/env bash
source ../utilities/color_utils.sh

# Echo helper utils
# show text in green
function echo_green { echo "$green""$1""$color_off"; }
# show text in yellow
function echo_yellow { echo "$yellow""$1""$color_off"; }
# show text in red
function echo_red  { echo "$red""$1""$color_off"; }