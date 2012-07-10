iface_script = _ifconfig
ifaces = e1000g0 e1000g1 en0 en1 eth0 wlan0
bin_SCRIPTS = $(iface_script) colortest smarttail
dist_data_DATA = $(bin_SCRIPTS)

install-exec-hook:
	cd $(bindir) && \
		for iface in $(ifaces); do \
			echo linking $(iface_script) to $$iface; \
			$(RM) $$iface; \
			$(LN_S) $(iface_script) $$iface; \
		done;

