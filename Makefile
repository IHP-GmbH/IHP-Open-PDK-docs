#   Copyright 2025 K. Mertens <mertens@ihp-microelectronics.com>
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

SHELL=/bin/bash

.SUFFIXES:

.DEFAULT_GOAL: authors

.PHOMY: authors

# tools
GIT=git
SED=sed
SED_FLAGS=-E
SORT=sort
UNIQ=uniq
ECHO=echo
RM=rm
RM_FLAGS=-f
CAT=cat

# tool check
TOOLS=$(GIT) $(SED) $(SORT) $(UNIQ) $(ECHO) $(RM) $(CAT)
CHECK=$(if $(strip $(shell command -v $(tool))),,$(error no such tool - $(tool)))
$(foreach tool,$(TOOLS),$(CHECK))


authors:
	echo > AUTHORS.md\
	&& git log --date=format:'%Y' --pretty=format:'%ad##%an#<%ae>' | sed -r -e's, ,#,g;' -e's,\+,§,g;' | sort | uniq > all-entries.txt\
	&& git log --pretty=format:'%an#<%ae>' | sed -r -e's/ /#/g;' -e's,\+,§,g;' | sort | uniq > candidates.txt\
	&& candidates=($$(cat candidates.txt))\
	&& for i in $${candidates[@]}\
	; do\
		years=(\
			$$(\
				cat all-entries.txt\
				| sed -r -e"/$${i}/!d;"\
				| sed -r -e's,^(....)(.*$$),\1,;'\
				| sort\
				| sed -r -e's/$$/,/g;'\
				| sed -r -e'$$s/,//g;'\
					-\
			)\
		)\
		&& echo "Copyright (c) $${years[@]}  $${i/\§/\+}  " | sed -r -e's/#/ /g;' >> AUTHORS.md\
	; done\
	&& rm -rf candidates.txt\
	&& rm -rf all-entries.txt\
	;

clean:
	-rm -rf AUTHORS.md


