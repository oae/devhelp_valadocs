#/bin/bash
wget -r -l2 -nd -Nc -A.tar.bz2 -P "./books/" http://valadoc.org/
find "$PWD/books" -iname "*.bz2" -exec tar xf {} -C ".books/" \;
