iface_script = _ifconfig
ifaces = e1000g0 e1000g1 en0 en1 eth0 wlan0
maven_script = _mvn
mavens = mvn2 mvn3
bin_SCRIPTS = $(iface_script) $(maven_script) colortest smarttail

install-exec-hook:
	cd $(bindir) && \
		for iface in $(ifaces); do \
			echo linking $(iface_script) to $$iface; \
			$(RM) $$iface; \
			$(LN_S) $(iface_script) $$iface; \
		done; \
		for maven in $(mavens); do \
			echo linking $(maven_script) to $$maven; \
			$(RM) $$maven; \
			$(LN_S) $(maven_script) $$maven; \
		done

