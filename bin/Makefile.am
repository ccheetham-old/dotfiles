mybindir = bin

install-exec-hook:
	link=$(prefix)/$(mybindir); \
	target=`pwd` ; \
	if [[ -e $$link ]]; then \
		if [[ -L $$link ]]; then \
			echo removing existing link to $$link; \
			rm $$link; \
		else \
			echo backing up $$link; \
			mv $$link $$link.backup; \
		fi; \
	fi; \
	echo linking $$link to $$target; \
	ln -s $$target $$link
