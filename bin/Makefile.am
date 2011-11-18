mybindir = bin
interfaces = e1000g0 e1000g1 en0 en1 eth0 wlan0

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
	ln -s $$target $$link; \
	cd $(prefix)/$(mybindir); \
	for iface in $(interfaces); do \
		if [[ -e $$iface ]]; then \
			if [[ -L $$iface ]]; then \
				echo removing existing link to $$iface; \
				rm $$iface; \
			else \
				echo backing up $$iface; \
				mv $$iface $$iface.backup; \
			fi; \
		fi; \
		echo linking _ifconfig to $$iface; \
		ln -s _ifconfig $$iface; \
	done

