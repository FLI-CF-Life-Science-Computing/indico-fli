#!/bin/sh
#start webpack to build assets as they are changed in the source for immediate display in server
./bin/maintenance/build-assets.py indico --dev --watch 2> build-assets.err.log > build-assets.log &
indico run -h indico-test.scinet.fli-leibniz.de -q --enable-evalex 2> indico.err.log > indico.log &
