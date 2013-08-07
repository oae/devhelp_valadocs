#!/usr/bin/bash

mkdir .books books
wget -r -l2 -nd -Nc -A.tar.bz2 -P "./books/" http://valadoc.org/
mkdir -p ~/.local/share/devhelp > /dev/null 2>&1
find "$PWD/books" -iname "*.bz2" -exec tar xf {} -C ".books/" \;
ln -sf "$PWD/.books" ~/.local/share/devhelp/books