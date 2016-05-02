#!/bin/bash

#作業用のフォルダを作成
mkdir intermedia
convert test/test.pdf intermedia/output.jpg
convert -crop 50%x100% intermedia/output.jpg intermedia/split.jpg
convert intermedia/split-* dist.pdf
#後片付け
rm -rf intermedia
