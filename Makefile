#!/usr/bin/make

PHONY: clean provision puppetlint validate yamllint

# executes a puppet run to provision the machine
provision: validate yamllint
	puppet apply --config etc/puppet.conf manifests/site.pp

# checks that puppet manifests conform to the style guide
puppetlint:
	puppet-lint --no-documentation-check --no-parameter_order-check manifests/
	puppet-lint --no-documentation-check site/

# checks puppet syntax
validate:
	puppet parser validate manifests/site.pp site/profile/manifests/

# checks yaml syntax
yamllint:
	yaml-lint -qi etc/ site/profile/

# deletes caches and runtime directories
clean:
	rm -rf cache/ var/
