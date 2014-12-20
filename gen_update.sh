#!/bin/sh

# Helper script to update the PO files

# extract, catalogs are in build/locale
make gettext

# update one language
# sphinx-intl -c source/conf.py update -p build/locale/ -l pt

# update all
# sphinx-intl -c source/conf.py update -p build/locale/

# There is a bug on Sphinx that cause fuzzy translations to be removed.
# A patch is available to work around this issue
# https://bitbucket.org/shimizukawa/sphinx-intl/issue/9/supporting-fuzzy-flag

# in any case, with PoEdit 1.7.1, the commented out translations become available
# as Traslation Memory suggestions.

# skip en
languages=(cs de es fr pt ru uk)

for lang in ${languages[*]}
do
    # update one by one
    cmd="sphinx-intl -c source/conf.py update -p build/locale/ -l $lang"
    echo $cmd
    $cmd

done
