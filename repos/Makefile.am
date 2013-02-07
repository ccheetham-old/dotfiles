files = repo.lst
scripts = refresh

install-data-hook:
	for f in $(files); do \
		$(install_sh) -m 0644 $$f $(prefix)/.$(subdir)/$$f; \
	done
	for f in $(scripts); do \
		$(install_sh) -m 0755 $$f $(prefix)/.$(subdir)/$$f; \
	done
