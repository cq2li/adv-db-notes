SHELL=/bin/bash

# DIRS := $$(ls -d1 *-*)

all:
	@for a in $$(ls -d1 *-*); do \
		if [ -d $$a ]; then \
			echo "Building '$$a'"; \
			$(MAKE) -C $$a ; \
		fi; \
	done;


clean:
	@for a in $$(ls -d1 *-*); do \
		if [ -d $$a ]; then \
			echo "Cleaning '$$a'"; \
			$(MAKE) -C $$a clean; \
		fi; \
	done;
