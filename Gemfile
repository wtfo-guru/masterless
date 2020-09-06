# vim:ft=ruby
source 'https://rubygems.org'

ENV['PUPPET_GEM_VERSION'] ||= '6.17.0'

group :development do
  gem "solargraph", "~> 0.39.15",   :require => false
end

group :development, :test do
  gem 'fast_gettext', '1.1.0',      require: false if Gem::Version.new(RUBY_VERSION.dup) < Gem::Version.new('2.1.0')
  gem 'fast_gettext',               require: false if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new('2.1.0')
  gem 'json',                       :require => false
  gem 'metadata-json-lint',         :require => false
  gem 'puppetlabs_spec_helper',     :require => false
  gem 'puppet-lint',                :require => false
  gem 'rake',                       :require => false
  gem 'rspec-puppet',               :require => false
  gem 'rubocop', '~> 0.80',         :require => false
  gem 'rubocop-rspec', '~> 1.38',   :require => false
end

if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, :require => false
else
  gem 'puppet', :require => false
end

gem 'hiera-eyaml', '~> 3.2'
gem 'r10k', '~> 3.5'
gem 'ra10ke', '~> 1.0'
