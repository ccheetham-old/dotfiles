files = 10local 20shell 30java 30python 30ruby 50admin 50ant 50brew 50cloudfoundry 50cloudfoundry_test 50dev 50emacs 50gcc 50gentoo 50git 50mail 50maven 50mongodb 50net 50pager 50postgres 50rabbitmq 50ssh 50svn 50task 50tomcat 50vim 50vmware 50web 50x 90local env functions profile

install-data-hook:
	for f in $(files); do \
		$(install_sh) -m 0644 $$f $(prefix)/.$(subdir)/$$f; \
	done
