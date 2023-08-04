#!/bin/bash
rm -rf build/ && mkdir build/ && cd build && \
ghc -dynamic ../"$1".hs  -outputdir . -o ./"$1" && ./"$1"