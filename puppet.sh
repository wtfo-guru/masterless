#!/bin/sh

puppet apply --config etc/puppet.conf manifests/site.pp $@
