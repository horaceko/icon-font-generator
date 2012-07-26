# Icon Font Generator
This project is simply a collection of scripts to generate icon font files. It consists of two main components:

  * `generate-icons.rb` - this splits an EPS file containing a regular grid of icons into individual EPS files; one per icon
  * `generate-font-file.py` - this takes a directory of EPS icon files and generates a font with them

## Installation
  
[Install Homebrew](http://mxcl.github.com/homebrew/). Then:

    brew install ghostscript
    brew install fontforge

Most likely, the Fontforge installation will fail (OS X 10.7 with the Command-Line Tools). If it doesn't, then do a `brew uninstall fontforge` before continuing. We need to update the Homebrew formula for Fontforge and (re)install.

Edit `/usr/local/Library/Formula/fontforge.rb` and paste the contents of [this gist](https://gist.github.com/3179848) into it. This will fix the compilation error and also install the Python module for Fontforge, which we'll need later.

To make a non-Homebrew Python aware of the Fontforge Python module, add the following to your `~/.bash_profile`:

    export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

Run a `source ~/.bash_profile` to reload it.

## Running `generate-icons.rb`
`generate-icons.rb` is self-documenting:


