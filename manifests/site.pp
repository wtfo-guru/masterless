node default {
  $description = lookup('description')
  notice("${::fqdn}: ${description}")
  contain profile::example
}
