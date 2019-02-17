# Puppet Control Repo

Put this repository into `~/.puppet/`.

For an in-depth explanation of this repo's contents see this blog post:
https://blog.cubieserver.de/2019/self-contained-puppet-control-repository/

## Install Puppet Modules

```
puppet module install --target 'modules'  'puppetlabs-apt' --version '6.2.1'
```

Commit modules to Git!
