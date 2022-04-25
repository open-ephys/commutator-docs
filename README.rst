*************************************************
Template for Open Ephys Documentation
*************************************************

This documentation's source template was taken from the `Spinal HDL <https://github.com/SpinalHDL/SpinalDoc-RTD>`_ project.

The theme is based on the `PyData Sphinx Theme <https://pydata-sphinx-theme.readthedocs.io/en/latest/>`_


What to customize
####################################

* License (at end of primary index page)
* conf.py:
   * project = "OE docs"  # change to your project name
   * "github_repo": "doc-template",  # change to new repo
   * html_logo = "_static/images/oe_logo_template.svg" # change to svg with your logo

      Change the device name on the logo "oe_logo_name.svg"
      Miso, Bold, 36 pt, Kerning: Optical
      Be sure to expand text before saving as .svg as Miso will not load as font.
* theme_overrides.css
   * Change overhead navigation bar colour (.navbar { background: })


How to build this documentation
####################################

With pipenv (recommended)
*************************************************

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
####################################
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
