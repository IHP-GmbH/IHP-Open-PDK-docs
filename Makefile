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

.PHOMY: authors
authors:
	$(ECHO) > AUTHORS.md\
	&& $(GIT) log --date=format:'%Y' --pretty=format:'%ad##%an#<%ae>' | $(SED) $(SED_FLAGS) -e's, ,#,g;' -e's,\+,§,g;' | $(SORT) | $(UNIQ) > all-entries.txt\
	&& $(GIT) log --pretty=format:'%an#<%ae>' | $(SED) $(SED_FLAGS) -e's/ /#/g;' -e's,\+,§,g;' | $(SORT) | $(UNIQ) > candidates.txt\
	&& candidates=($$($(CAT) candidates.txt))\
	&& for i in $${candidates[@]}\
	; do\
		years=(\
			$$(\
				$(CAT) all-entries.txt\
				| $(SED) $(SED_FLAGS) -e"/$${i}/!d;"\
				| $(SED) $(SED_FLAGS) -e's,^(....)(.*$$),\1,;'\
				| $(SORT)\
				| $(SED) $(SED_FLAGS) -e's/$$/,/g;'\
				| $(SED) $(SED_FLAGS) -e'$$s/,//g;'\
					-\
			)\
		)\
		&& $(ECHO) "Copyright (c) $${years[@]}  $${i/\§/\+}  " | $(SED) $(SED_FLAGS) -e's/#/ /g;' >> AUTHORS.md\
	; done\
	&& $(RM) $(RM_FLAGS) -r candidates.txt\
	&& $(RM) $(RM_FLAGS) -r all-entries.txt\
	;

clean:
	-$(RM) $(RM_FLAGS) -r AUTHORS.md


