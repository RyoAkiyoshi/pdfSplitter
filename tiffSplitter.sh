#!/bin/bash

mkdir tmp

convert -rotate 270 ./input/*.tif tmp/tmp.tif
convert -crop 50%x50% ./tmp/tmp.tif ./tmp/output.tif

convert ./tmp/output.tif output.tif
rm -rf tmp
