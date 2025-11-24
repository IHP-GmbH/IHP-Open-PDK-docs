#   IHP-Open-PDK-docs -- Provide documentation for the IHP-Open-PDK project
#
#   Copyright (c) 2025  K. Mertens <mertens@ihp-microelectronics.com>
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

SHELL=/bin/sh

.SUFFIXES:

.DEFAULT_GOAL: authors

authors:
	echo "IHP-Open-PDK-docs -- Provide documentation for the IHP-Open-PDK project" > AUTHORS.md
	echo >> AUTHORS.md
	git log --date=format:'%Y' --pretty=format:'Copyright (c) %ad  %an <%ae>' | uniq >> AUTHORS.md

clean:
	-rm -rf AUTHORS.md

