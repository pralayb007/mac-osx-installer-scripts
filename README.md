# mac-osx-installer-scripts

## Prelude

On a cold humdrum November 2020 morning, I woke up and discovered that my work laptop (an early 2015 MacBook pro) would no longer boot! Keeping my fingers crossed, I got in touch with my company's IT support team, but to no avail. After spending a day of multiple safe-mode boots, recovery-mode boots and PRAM resets, a diagnosis revealed that my beloved MacBook had a SMC failure...a wicked bad SMC failure!

Not ready to give up yet, I found myself spending an obscene amount of time in the following two days, which included multiple (long) calls with IT support, numerous remote logins, humongous number of tickets, looking up websites and a lot of fiddling.  But after trying out everything under the sun, I was forced to concede. It was about time that I accepted the  universal truth that relates to all life and matter - my MacBook had given up on me...my MacBook was now one of those glittering stars far away in Andromeda. 

My manager was kind enough to approve me a new work laptop (also a MacBook Pro) which was scheduled to be delivered to me in a week or two. While I awaited the arrival of the new laptop, one thing that constantly haunted me (besides losing a lot of my data) was the time it would take me to install of all the software that I use for development, writing, diagramming, my beloved dot files, my Fira-code and Inconsalata, my iTerm2 configuration, and well, a numerous other things.

Given the situation(s) I ran into, and with a due consideration to the fact that this was the second time (yes, seriously!) my work laptop failed on me, I decided to script out a few of my installations.  

## What?

This repository is simply a bunch of shell scripts which when run do the installations from Homebrew, the mount-install-unmount of disk-images (DMGs) that I have on my Dropbox, shell configurations et al. 

## Usage

1. Clone the repository 
2. Fire the scripts as-is or comment out the modules/lines that you may not be interested in. 

**TODOs:** 

1. On the readme file, elaborate on the usage a bit more. 
2. May be also make a table of contents on which scripts do what. 

