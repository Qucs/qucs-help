#!/bin/sh

# Helper script to generate HTML documentation

# generate localized html documentation
languages=(cs de en es fr pt ru uk)

# compile
sphinx-intl -c source/conf.py build -d source/locale

for lang in ${languages[*]}
do
    printf "  %s\n" $dir
    cmd="sphinx-build -a -b html -d build/doctrees/ -D language=$lang source build/html-$lang"
    echo $cmd
    $cmd

done

