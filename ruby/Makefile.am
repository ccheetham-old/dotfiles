files = gemrc rvmrc

dist_data_DATA = $(files)

install-data-hook:
	for f in $(files); do \
		$(install_sh) -m 0644 $$f $(prefix)/.$$f; \
	done
