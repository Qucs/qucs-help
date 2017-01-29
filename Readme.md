[![Documentation Status](https://readthedocs.org/projects/qucs-help/badge/?version=latest)](https://readthedocs.org/projects/qucs-help/?badge=latest)
[![Documentation Status](https://readthedocs.org/projects/qucs-help/badge/?version=0.0.19)](https://readthedocs.org/projects/qucs-help/?badge=0.0.19)

Qucs-Help documentation
=======================

This is a more translation friendly approach to documentation contained in the Qucs-Help application.

The documents are managed by [Sphinx](http://sphinx-doc.org/latest/index.html) (Python) documentation generator.
Translations are handled by the sphinx-intl extension.

A variety of outputs can be generated (including HTML, PDF).

Sphinx uses the reStructuredText markup (rst).
The original `html` files were converted to a master `rst` and translations are
managed by `gettext` and PO files.

Details about the Sphinx Internationalization workflow can be found in: http://sphinx-doc.org/latest/intl.html


Documentation and Translation Workflow
--------------------------------------


How to add new documents and make corrections:

- The source language is English.

- The latest documentation and corrections go into the `develop` branch.

  - See `develop`: <http://qucs-help.readthedocs.org/en/latest/>

- The release tags in the `master` branch are published at every version.

  - See `0.0.19` version <http://qucs-help.readthedocs.org/en/0.0.19/>


Release cycle (draft):

- Use the [*git flow*](http://nvie.com/posts/a-successful-git-branching-model/) branching model.

- Team agrees on a [release version](http://semver.org/) and date. Synch with Qucs project release.

- Start release branch from `develop`, bump version, ex. `0.0.20`

- Final adjustments take place on release branch.

- Release branch enters "string freeze". No more edits allowed.

- Translators are notified of "string freeze"

- The PO files are updated and pushed to [Transifex Qucs-Help project](https://www.transifex.com/projects/p/qucs-help/)

- Define a deadline for translators to update their translations.

- Translations phase is closed

- For each language:

  - the translated PO file is pulled from Transifex

  - files are checked for consistency

  - translations are merged

  - **it is important to check that translation are not being lost**

  - MO files are generated and updated on the repository (needed by ReadTheDocs)

- Add Qucs-help (HTML or PDF) into Qucs for distribution

- Synchronize with Qucs release

- Switch merge release branch into `master`, tag, delete release branch.

- Update the visibility of the release branch on [ReadTheDocs Qucs-Help](http://qucs-help.readthedocs.org/en/0.0.18/)


Setup
-----

Python dependencies:

```
pip install sphinx
pip install sphinx-intl

pip install sphinx-rdt-theme # in case this no longer works
pip install git+git://github.com/snide/sphinx_rtd_theme.git#egg=sphinx_rdt_theme
```

Tested with:

- OS X 10.9.5
- Python 2.7.11
- Sphinx==1.3.5
- docutils==0.12
- sphinx-intl==0.9.9
- sphinx-rtd-theme==0.1.6
- others dependencies (?)


Basics
------

The basic commands to update a are Below the basic commands The basics are done with the commands below.

- Check statistics of translated, untranslated and fuzzy strings

```
$ sphinx-intl -c source/conf.py stat -d source/locale -l pt_BR
```

- Extract translatable messages, generate POT files

```
$ make gettext
```

- Update `pt_BR` language PO file

```
$ sphinx-intl -c source/conf.py update -p build/locale/ -l pt_BR
```

By now the translators can open and translate the PO files in ``source/locale/[language]/LC_MESSAGES/[file].po``

- Compile PO -> MO for all languages

```
$ sphinx-intl -c source/conf.py build -d source/locale
```

- Generate html for `pt_BR` language

```
$ sphinx-build -a -b html -d build/doctrees/ -D language=pt_BR source build/html-pt_BR
```

- Generate pdf for `pt` language

```
$ sphinx-build -a -b latex -d build/doctrees/ -D language=pt_BR source build/latex-pt_BR
$ make -C build/latex-pt_BR
```

Scripts
-------

A couple of bash scripts are provided to automate a few steps.

- ``gen_update.sh`` : generate POT and update PO files
- ``gen_html.sh``   : compile MO and generate HTML files into `build/html-[language]`
- ``gen_pdf.sh``    : build LaTex output and compile PDF into `build/latex-[language]`


Transifex-client
----------------

TODO : http://sphinx-doc.org/latest/intl.html


Notes for Authors
-----------------

The source content should be written in English. Contribution to the help documentation is welcome.

It is important to note that every paragraph will become a translatable string.

Breaking the text in smaller paragraphs is better for translator. Changes are localized to smaller blocks of text/translation making it easier to update and maintain

Notes for Translators
---------------------

The current translations are listed below.
Each language is in a different stage of completion.

- English - `en` ( source documentation )
- Czech - `cs`
- German - `de`
- Spanish - `es`
- French - `fr`
- Portuguese (Brazilian)- `pt_BR`
- Russian - `ru`
- Ukrainian - `uk`

To contribute new translation strings is quite simple.

You can log in to [Qucs-Help on Transifex](https://www.transifex.com/projects/p/qucs-help/) and request to join the team of translators.

You can also translate the PO files directly on your computer.
Please notify the maintainers/translators do avoid work duplication

- download the ``.po`` files that need attention
- edit the files with [Poedit](http://poedit.net/)
- save the result
- send us the new PO file or a pull request.



---

TODO

Note also that when changes are made to the source the respective translation will be
marked as *fuzzy* in the PO files.
This is a sign to translators that the content was changed and needs revision.
The translation needs to be updated and/or the *fuzzy* marker removed.
If the *fuzzy* is not removed the document generation will use the default which is English.

The above note about *fuzzy* strings is important to keep in mind when modifying existing content.
If every paragraph of a document is slightly modified all of it will become *fuzzy* in the PO files.
At the moment we don't have a team of translators and the few translations that we have will simply
be ignored.






