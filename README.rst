*************************************************
Template for Open Ephys Documentation
*************************************************
This template is for building documentation of Open Ephys devices or software.

How to use this template
####################################
The documentation files are written in reStructuredText and saved in the 'source' folder. Sphinx is a documentation generator that converts these .rst files to HTML, so that browsers can display them. This sphinx 'build' can be performed locally so that you can preview pages in a browser, or it can be done by github remotely (see below for build instructions).

Sphinx is a Python project, and each site relies on a specific list of python packages. These are listed in the Pipfile so that local or remote builds know which packages to install. This project uses pipenv, allowing the user to create a virtual environment in which the correct version of all required packages is installed (see 'local build').

What to customize
####################################
Each documentation page is saved as an individual .rst file in the 'source' folder. Docs are written primarily in reStructuredText, and HTML can be used within the .rst file. Images are saved under _static. Besides obviously customizing the content of the pages, you will need to make sure to update:

* License (at end of primary index page)
* conf.py:
   * project = "OE docs"  # change to your project name
   * "github_repo": "doc-template",  # change to new repo
   * html_logo = "_static/images/oe_logo_template.svg" # change to svg with your logo

      Change the device name on the logo "oe_logo_name.svg"
      Miso, Bold, 36 pt, Kerning: Optical
      Be sure to expand text before saving as .svg as Miso will not load as font.
* theme_overrides.css
   * Change overhead navigation bar colour (.navbar { background: yourfavecolour })
* .github/workflows/sphinx-build.yml
   * git clone https://github.com/open-ephys/doc-template.git # change to your repo

Building remotely
*************************************************
Pushing to the main branch of the repo triggers GitHub Actions. Gh-actions will generate a virtual environment, build the HTML pages, and then commit and push these to the 'gh-pages' branch, by following the instructions under .github/workflows/sphinx-build. Finally, if under repo settings gh pages is enabled and points to 'gh-pages/docs, the docs site will be generated.

Building locally
*************************************************
Building HTML files locally allows you to preview changes.

With pipenv (recommended)
-------------------------------------------------

Requirements (system)

* make

Requirements (Python 3):

* pipenv (will automatically download all the project requirements from pypi)

Create a virtual environment with pipenv (will use the Pipfile for installing the necessary packages)

.. code:: shell

   pipenv install

then you can build the documentation

.. code:: shell

   pipenv run make html

if you want run ``make`` multiple times, prepend ``pipenv run`` on each command can be annoying,
you can spawn a subshell with

.. code:: shell

   pipenv shell

and then you can use ``make`` the usual way

.. code:: shell

   make html     # for html
   make latex    # for latex
   make latexpdf # for latex (will require latexpdf installed)
   make          # list all the available output format

all the outputs will be in docs folder (for html: docs/html)

without pipenv/virtualenv
-------------------------------------------------
Requirements (system):

* make

Requirements (Python 3):

* sphinx
* sphinx-rtd-theme
* sphinxcontrib-wavedrom

After installing the requirements you can run

.. code:: shell

   make html     # for html
   make latex    # for latex
   make latexpdf # for latex (will require latexpdf installed)
   make          # list all the available output format

Acknowledgements
####################################

This documentation's source template was taken from the `Spinal HDL <https://github.com/SpinalHDL/SpinalDoc-RTD>`_ project.

The theme is based on the `PyData Sphinx Theme <https://pydata-sphinx-theme.readthedocs.io/en/latest/>`_
