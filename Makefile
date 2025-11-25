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
MKTEMP=mktemp
MKTEMP_FLAGS=

# tool check
TOOLS=$(GIT) $(SED) $(SORT) $(UNIQ) $(ECHO) $(RM) $(CAT) $(MKTEMP)
CHECK=$(if $(strip $(shell command -v $(tool))),,$(error no such tool - $(tool)))
$(foreach tool,$(TOOLS),$(CHECK))

# files
NOTICES=NOTICES.generated

# goals
.PHONY: all
all: clean authors display

.PHOMY: authors
authors:
	@tmp1=`$(MKTEMP) $(MKTEMP_FLAGS) -q file.XXXXX` && {\
		$(GIT) log --date=format:'%Y' --pretty=format:'%ad##%an#<%ae>' | $(SED) $(SED_FLAGS) -e's, ,#,g;' -e's,\+,§,g;' | $(SORT) | $(UNIQ) > $${tmp1}\
		&& tmp2=`$(MKTEMP) $(MKTEMP_FLAGS) -q file.XXXXX` && {\
			$(GIT) log --pretty=format:'%an#<%ae>' | $(SED) $(SED_FLAGS) -e's/ /#/g;' -e's,\+,§,g;' | $(SORT) | $(UNIQ) > $${tmp2}\
			&& candidates=($$($(CAT) $${tmp2}))\
			&& for i in $${candidates[@]}\
			; do\
				years=(\
					$$(\
						$(CAT) $${tmp1}\
						| $(SED) $(SED_FLAGS) -e"/$${i}/!d;"\
						| $(SED) $(SED_FLAGS) -e's,^(....)(.*$$),\1,;'\
						| $(SORT)\
						| $(SED) $(SED_FLAGS) -e's/$$/,/g;'\
						| $(SED) $(SED_FLAGS) -e'$$s/,//g;'\
							-\
					)\
				)\
				&& $(ECHO) "Copyright (c) $${years[@]}  $${i/\§/\+}  " | $(SED) $(SED_FLAGS) -e's/#/ /g;' >> $(NOTICES)\
			; done\
			&& $(RM) $(RM_FLAGS) -r $${tmp2}\
		;}\
		&& $(RM) $(RM_FLAGS) -r $${tmp1}\
	;}

.PHONY: display
display:
	@$(CAT) $(NOTICES)

.PHONY: clean
clean:
	-@$(RM) $(RM_FLAGS) -r $(NOTICES)


