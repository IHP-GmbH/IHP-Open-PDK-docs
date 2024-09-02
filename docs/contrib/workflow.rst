Workflow
##########


The ``IHP-Open-PDK`` model follows the Git-Flow model of development. We mantain two branches, namely ``main`` 
(stable one for production) and ``dev`` (experimental for development and testing).

In order to contribute to the PDK the following procedure is recommended:




#. Create your own github account (only if you do not have one already).
#. Make a fork of our repository (be sure that not only main branch is forked).
#. Clone the PDK from your own account.
#. Checkout to the development branch ``git checkout dev``
#. Create a new feature branch ``git branch feature_name``
#. Do your regular development and commit the changes with `-s` flag ``git commit -s -m "your message"``
#. Checkout to the development branch ``git checkout dev``
#. Merge the changes developen in the feature branch ``git merge feature_name``
#. Push the changes to your github fork ``git push origin dev``
#. Create a `Pull Request` on the github web interface. 
