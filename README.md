# Pictos Font Generator
Here be the Pictos font generator! It's a collection of scripts to make it easy to generate a font from Pictos.

## Installation
  
Install Homebrew. Then:

    brew install imagemagick
    brew install fontforge

Most likely, the Fontforge installation will fail. If it doesn't, then do a `brew uninstall fontforge` before continuing.

Edit `/usr/local/Library/Formula/fontforge.rb` and paste the contents of [this gist](https://gist.github.com/3179848) into it. This will fix the compilation error and also install the Python module for Fontforge.

## Generating the .EPS Icons
To generate the .EPS icons from the massive .EPS files provided by Pictos, run the following:

