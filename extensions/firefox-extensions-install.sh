#!/usr/bin/env bash

# Open the app
open -a 'Firefox'

# Wait for 10 secs so that all the remaining URLs open as tabs instead of new windows
sleep 10

# Tampermonkey
open -a 'Firefox' "https://addons.mozilla.org/en-US/firefox/addon/tampermonkey/"

# Tree Style Tab
open -a 'Firefox' "https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/"

# Evernote Web Clipper
open -a 'Firefox' "https://addons.mozilla.org/en-US/firefox/addon/evernote-web-clipper/"

# Lastpass password manager
open -a 'Firefox' "https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/"

# AdBlock
open -a 'Firefox' "https://addons.mozilla.org/en-US/firefox/addon/adblock-for-firefox/"
