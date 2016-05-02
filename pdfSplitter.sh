#!/bin/bash
convert test.pdf test.jpg
convert -crop 50%x100% test.jpg output.jpg
convert output-* dist.pdf
