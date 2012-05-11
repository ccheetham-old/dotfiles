files = java.snippets

dist_data_DATA = $(files)

install-data-hook:
	$(install_sh) -d $(prefix)/.$(subdir); \
	for f in $(files); do \
		$(install_sh) -m 0644 $$f $(prefix)/.$(subdir)/$$f; \
	done
