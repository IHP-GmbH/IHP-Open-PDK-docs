# Copyright 2024 IHP PDK Authors
# Copyright 2025 K. Mertens <mertens@ihp-microelectronics.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0
#
# Configuration file for the Sphinx documentation builder.
#
# This file does only contain a selection of the most common options. For a
# full list see the documentation:
# http://www.sphinx-doc.org/en/master/config

#=========================================================================
# ---------------------------------- DOCS --------------------------------
#=========================================================================

# The top directory where environment will be created.
DOCS_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS     ?= -j auto -w build.log
SPHINXBUILD     = sphinx-build
SPHINXAUTOBUILD = sphinx-autobuild
SPHINXPROJ      = IHP-Open-PDK-docs
SOURCEDIR       = $(DOCS_DIR)
BUILDDIR        = $(DOCS_DIR)/_build


.DEFAULT_GOAL := docs

docs: clean setup preprocess singlehtml build message

#========================
# ----- BUILD DOCS ------
#========================

.ONESHELL:
clean:
	@rm -rf $(BUILDDIR)

.ONESHELL:
setup:
	@pip install -r requirements.txt

.ONESHELL:
preprocess:
	@echo "Counting precheck DRC rules..."
	python3 scripts/count_precheck_drc_rules.py

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
build:
	@$(SPHINXBUILD) -M "html" "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

singlehtml:
	@$(SPHINXBUILD) -M "singlehtml" "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

latexpdf:
	@$(SPHINXBUILD) -M "latexpdf" "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

#========================
# ---- DISPLAY DOCS -----
#========================

.ONESHELL:
message:
	@echo "Type \`make display\` to launch the built documentation in web browser."

.ONESHELL:
display:
	@cd _build/html
	xdg-open index.html 2>/dev/null

.ONESHELL:
display-singlehtml:
	@cd _build/singlehtml
	xdg-open index.html 2>/dev/null
