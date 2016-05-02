#!/bin/bash

#作業用のフォルダを作成
mkdir intermedia
convert test/test.pdf intermedia/test.jpg
convert -crop 50%x100% intermedia/test.jpg intermedia/output.jpg
convert intermedia/output-* dist.pdf
#後片付け
rm -rf intermedia
