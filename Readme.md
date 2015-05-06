[![Documentation Status](https://readthedocs.org/projects/qucs-help/badge/?version=master)](https://readthedocs.org/projects/qucs-help/?badge=master)
[![Documentation Status](https://readthedocs.org/projects/qucs-help/badge/?version=qucs-0.0.18)](https://readthedocs.org/projects/qucs-help/?badge=qucs-0.0.18)

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


Status
------

This is the first iteration Qucs-Help documentation based on Sphinx.

It is a direct migration from the HTML documentation previously distributed alog with the Qucs-Help application.

The branch `qucs-0.0.18` is in string "freeze" state. Translations are still accepted as a way to gracefully handle the transition to new documents.

The `master` branch is expected to undergo major changes.


Documentation and Translation Workflow
--------------------------------------


New documents and corrections:


- The latest documentation and corrections should go into the `master` branch. Pull Requests are prefered.

- The `master` branch (only English) is updated automatically in [Qucs-Help master](http://qucs-help.readthedocs.org/en/master/)


Relese cycle (draft):


- Team agrees on a [release version](http://semver.org/) and date.

- Release branch is created, ex. `qucs-0.0.19`

- Final adjustments take place on release branch.

- Define a deadline (prior to release) to set all documents in "string freeze". No more edits allowed.

- Translators are notified of "string freeze"

- The PO files are updated and pushed to [Transifex Qucs-Help project](https://www.transifex.com/projects/p/qucs-help/)

- Define a deadline for translators to update their translations.

- Translations phase is closed

- For each language:

  - the translated PO file is pulled from Transifex

  - files are checked for consistency

  - translations are merged

  - **it is important not to lose any translation**

  - MO files are generated and updated on the repository


- Update the visibility of the release branch on [ReadTheDocs Qucs-Help](http://qucs-help.readthedocs.org/en/qucs-0.0.18/)

- Add Qucs-help (HTML or PDF) to Qucs for distribution

- Prodeed with Qucs package release

- Switch back to `master` and start with new documentation and corrections.


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

You can log in to [Qucs-Help on Transifex](https://www.transifex.com/projects/p/qucs-help/) and request to joing the team of translators.

You can also translate the PO files direclty on your compouter.
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






