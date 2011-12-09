files = gemrc rvmrc

install-data-hook:
	for f in $(files); do \
		$(top_srcdir)/install-sh -m 0644 $$f $(prefix)/.$$f; \
	done
