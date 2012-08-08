files = fetchmailrc msmtprc procmailrc
mutt_prefix = $(prefix)/.mutt
mutt_files = muttrc account.muttrc alias.muttrc color.muttrc ignore.muttrc layout.muttrc macro.muttrc mailbox.muttrc maillist.muttrc tool.muttrc
mutt_scripts = setup

install-data-hook:
	for f in $(files); do \
		$(install_sh) -m 0600 $$f $(prefix)/.$$f; \
	done
	for f in $(mutt_files); do \
		$(install_sh) -m 0600 $$f $(mutt_prefix)/$$f; \
	done
	for f in $(mutt_scripts); do \
		$(install_sh) -m 0700 $$f $(mutt_prefix)/$$f; \
	done
