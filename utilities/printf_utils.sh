#!/usr/bin/env bash
source ./utilities/color_utils.sh

printf_new() {
 str=$1
 len=$2
printf "$green"'%*s' "$len" | tr ' ' "$str"
printf "\n"
}