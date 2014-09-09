#!/usr/bin/env bash

# Configure Sublime command line tool
# https://www.sublimetext.com/docs/2/osx_command_line.html
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# Define paths
SUBLIME_DIR=~/Library/Application\ Support/Sublime\ Text\ 2
TEMP_DIR=${TMPDIR}SublimeTextConfig

# Make sure the temp folder is empty
rm -rf "${TEMP_DIR}"

# Clone the project with its submodules
git clone --recursive https://github.com/aripalo/SublimeTextConfig.git "${TEMP_DIR}"

# Start (and then shutdown) Sublime Text so we make sure all required folders (mainly ${SUBLIME_DIR} exists
subl
pkill Sublime

# Make sure Packages/User does not exits
rm -rf "${SUBLIME_DIR}"/Packages/User

# Move the repo contents to Packages dir
mv "${TEMP_DIR}"/* "${SUBLIME_DIR}"/Packages
mv "${TEMP_DIR}"/.gitmodules "${SUBLIME_DIR}"/Packages
mv "${TEMP_DIR}"/.gitignore "${SUBLIME_DIR}"/Packages

# Delete the temp dir
rm -rf "${TEMP_DIR}"

# Start Sublime Text so Package Manager will start to install plugins defined in User/Package Control.sublime-settings
subl
