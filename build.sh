#!/bin/bash

set -e # Exit on any errors

# Get the directory of this script
# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# First, build all the SVG files from the YAML specifications (to show off example game states)
"$DIR/create-svg-all.sh"

# Second, build the website, which will go into the "build" subdirectory
cd "$DIR"
rm -rf "$DIR/build"
npm run build
