SUBDIRS = after autoload bundle

files = vimrc
scripts = setup

install-data-hook:
	for f in $(files); do \
		$(install_sh) -m 0644 $$f $(prefix)/.$$f; \
	done
	for f in $(scripts); do \
		$(install_sh) -m 0755 $$f $(prefix)/.$(subdir)/$$f; \
	done
