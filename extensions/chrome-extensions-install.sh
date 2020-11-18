#!/usr/bin/env bash
source ../utilities/echo_utils.sh

app='Google Chrome'
alias install=open -a "$app"

# Open Chrome
open -a "$app"

# Wait for 10 secs so that all the remaining URLs open as tabs instead of new windows
sleep 10

# Evernote web clipper
install "https://chrome.google.com/webstore/detail/evernote-web-clipper/pioclpoplcdbaefihamjohnefbikjilc"

# Adblock
install "https://chrome.google.com/webstore/detail/adblock-%E2%80%94-best-ad-blocker/gighmmpiobklfepjocnamgkkbiglidom?hl=en-US"

# Video speed controller
install "https://chrome.google.com/webstore/detail/video-speed-controller/nffaoalbilbmmfgbnbgppjihopabppdk"

# Express VPN
install "https://chrome.google.com/webstore/detail/expressvpn-vpn-proxy-to-u/fgddmllnllkalaagkghckoinaemmogpe"

# Lastpass password manager
install "https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd"

# Page elements eraser
install "https://chrome.google.com/webstore/detail/page-eraser/ekofpchjmoalonajopdeegdappocgcmj"

# Youtube playlist duration
install "https://chrome.google.com/webstore/detail/youtube-playlist-duration/ijppgifnllaehojnpbphigenojfjnhml"

# Roam toolkit
install "https://chrome.google.com/webstore/detail/roam-toolkit/ebckolanhdjilblnkcgcgifaikppnhba"

# Draw IO
install "https://chrome.google.com/webstore/detail/diagramsnet-and-drawio-im/cnoplimhpndhhhnmoigbanpjeghjpohi"

# Typio form recovery
install "https://chrome.google.com/webstore/detail/typio-form-recovery/djkbihbnjhkjahbhjaadbepppbpoedaa"

# MyMind extension
install "https://chrome.google.com/webstore/detail/mymind-%E2%80%94-an-extension-for/nmgcefdhjpjefhgcpocffdlibknajbmj"
