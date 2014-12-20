
Qucs-Help documentation
=======================

This is a more translation friendly approach to documentation contained in the Qucs-Help application.

The documents are managed by [Sphinx](http://sphinx-doc.org/latest/index.html) (Python) documentation generator.
Translations are handled by the sphinx-intl extension.

A variety of outputs can be generated (including html, pdf).

Sphinx uses the reStructuredText markup (rst).
The original `html` files were converted to a master `rst` and translations are
managed by `gettext` and PO files.

Details about the Sphinx Internationalization workflow can be found in: http://sphinx-doc.org/latest/intl.html


Setup
-----

Tested with:

- OS X 10.9.5
- Python 2.7
- Sphinx==1.2.3
- docutils==0.12
- sphinx-intl==0.9.5 (patched, see
[issue #9](https://bitbucket.org/shimizukawa/sphinx-intl/issue/9/supporting-fuzzy-flag))
- sphinx-rtd-theme==0.1.6
- others dependencies (?)


Basics
------

The basic commands to update a are Below the basic commands The basics are done with the commands below.

- Check statistics of translated, untranslated and fuzzy strings

```
$ sphinx-intl -c source/conf.py stat -d source/locale -l pt
```

- Extract translatable messages, generate POT files

```
$ make gettext
```

- Update `pt` language PO file

```
$ sphinx-intl -c source/conf.py update -p build/locale/ -l pt
```

By now the translators can open and translate the PO files in ``source/locale/[language]/LC_MESSAGES/[file].po``

- Compile PO -> MO for all languages

```
$ sphinx-intl -c source/conf.py build -d source/locale
```

- Generate html for `pt` language

```
$ sphinx-build -a -b html -d build/doctrees/ -D language=pt source build/html-pt
```

- Generate pdf for `pt` language

```
$ sphinx-build -a -b latex -d build/doctrees/ -D language=pt source build/latex-pt
$ make -C build/latex-pt
```

Scripts
-------

A couple of bash scripts are provided to automate a few steps.

- ``gen_update.sh`` : generate POT and update PO files
- ``gen_html.sh``   : compile MO and generate HTML files into `build/html-[language]`
- ``gen_pdf.sh``    : build LaTex output and compile PDF into `build/latex-[language]`


Notes for Translators
---------------------

The current translations are listed below.
Each language is in a different stage of completion.

- English - EN ( source documentation )
- Czech CS
- German - DE
- Spanish - ES
- French - FR
- Portuguese - PT (\_BR actually)
- Russian - RU
- Ukrainian - UK

The current status of the translations are listed in the [``stats.txt``](stats.txt) file.

To contribute new translation strings is quite simple.:

- download the ``.po`` files that need attention
- edit the files with [Poedit](http://poedit.net/)
- save the result
- send us the new file or a pull request.

TODO: check how to setup a Transifex account to ease the process.


Notes for Authors
-----------------

The source content should be written in English. Contribution to the help documentation is welcome.

Roughly every paragraph will become a translatable string.
Note also that when changes are made to the source the respective translation will be
marked as *fuzzy* in the PO files.
This is a sign to translators that the content was changed and needs revision.
The translation needs to be updated and/or the *fuzzy* marker removed.
If the *fuzzy* is not removed the document generation will use the default which is English.

The above note about *fuzzy* strings is important to keep in mind when modifying existing content.
If every paragraph of a document is slightly modified all of it will become *fuzzy* in the PO files.
At the moment we don't have a team of translators and the few translations that we have will simply
be ignored.






