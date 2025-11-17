Workflow Documentation
======================

The ``IHP-Open-PDK-docs`` model follows the Git-Flow model of development. We mantain two branches, namely ``main``
(stable one for production -- not yet accomplished) and ``latest`` (experimental for development and testing).

In order to contribute to the PDK the following procedure is recommended:

#. Create your own GitHub account (only if you do not have one already).
#. Make a fork of our repository (be sure that not only main branch is forked).
#. Clone the PDK from your own account.
#. Checkout to the development branch ``git checkout latest``
#. Create a new feature branch ``git branch feature_name``
#. Do your regular development and commit the changes with `-s` flag ``git commit -s -m "your message"``
#. Checkout to the development branch ``git checkout latest``
#. Merge the changes developed in the feature branch ``git merge feature_name``
#. Push the changes to your GitHub fork ``git push origin latest``
#. Create a `Pull Request` on the GitHub web interface.
