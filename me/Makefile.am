files = 10shell 20local 30grails 30groovy 30java 30python 30ruby 30scala 50admin 50ant 50brew 50cloudfoundry 50cloudfoundry_test 50dev 50emacs 50gentoo 50git 50mail 50maven 50mongodb 50net 50postgres 50rabbitmq 50ssh 50svn 50vim 50vmware 50web 50x 90local env functions profile

install-data-hook:
	$(top_srcdir)/install-sh -d $(prefix)/.$(subdir); \
	for f in $(files); do \
		$(top_srcdir)/install-sh -m 0644 $$f $(prefix)/$(subdir)/$$f; \
	done
