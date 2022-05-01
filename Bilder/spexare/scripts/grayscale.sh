#!/bin/bash

for i in *.JPG *.jpg; do
    convert $i -colorspace Gray $i
done
