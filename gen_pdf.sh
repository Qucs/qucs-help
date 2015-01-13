#!/bin/sh

# Helper script to generate PDF documents

# generate localized pdf documentation
languages=(cs de en es fr pt_BR ru uk)

for lang in ${languages[*]}
do
    printf "  %s\n" $dir
    cmd="sphinx-build -a -b latex -d build/doctrees/ -D language=$lang source build/latex-$lang"
    echo $cmd
    $cmd

    cmd="make -C build/latex-$lang"
    echo $cmd
    $cmd

done

