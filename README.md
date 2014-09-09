# My Sublime Text 2 Configuration

**DOES NOT WORK CURRENTLY**

**It sets up Sublime Text 2 with my [preferences](Preferences.sublime-settings) and [plugins](Package%20Control.sublime-settings).**

Works on Mac OS X.

## Installation

Note: Aimed for fresh Sublime Text 2 installation.

1. Install Sublime Text 2

2. In the console run
  ```
  SUBLIME_DIR=~/Library/Application\ Support/Sublime\ Text\ 2
  TEMP_DIR=${TMPDIR}SublimeTextConfig
  rm -rf "${TEMP_DIR}"
  git clone --recursive https://github.com/aripalo/SublimeTextConfig.git "${TEMP_DIR}"
  pkill Sublime
  rm -rf "${SUBLIME_DIR}"/Packages/User
  mv "${TEMP_DIR}"/* "${SUBLIME_DIR}"/Packages
  rm -rf "${TEMP_DIR}"
  "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" --background
  ```

3. Ignore errors and wait for Package Manager to install everything

4. Profit...?
