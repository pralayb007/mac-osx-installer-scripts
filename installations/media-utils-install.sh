#!/usr/bin/env bash
source ./utilities/echo_utils.sh

# Media libraries and players
brew install ffmpeg # Play, record, convert, and stream audio and video
brew install libjpeg # JPEG image handling and manipulation

echo_yellow "Installing VLC"
brew cask install vlc

echo_yellow "Installing Spotify"
brew cask install spotify