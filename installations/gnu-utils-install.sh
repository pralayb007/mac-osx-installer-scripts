#!/usr/bin/env bash

# GNU software configuration and localization
brew install autoconf     # Automatically configure software source code packages
brew install automake     # Tool for generating GNU Standards-compliant Makefiles
brew install gettext      # GNU internationalization (i18n) and localization (l10n) library
brew install gnu-sed
brew install grep
brew install perl         # Not really GNU but still
brew install awk          # Not really GNU but still

# Install GNU core utilities (those that come with macOS are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Install more recent versions of some macOS tools.
brew install openssh
brew install screen
brew install php
brew install gmp