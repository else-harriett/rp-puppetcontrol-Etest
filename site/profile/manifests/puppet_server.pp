# This is the puppet_server profile and is used to manage resources on your
# local puppet master.

class profile::puppet_server {
  class { 'puppetdb::globals':
    version => hiera('puppetdb::globals:version', '4.3.0-1.el7'),
  }

  contain python
  contain rap_puppet_puppetserver
  contain puppetdb::master::config
  contain puppetdb::server
  contain hiera

  Class['python'] -> Class['rap_puppet_puppetserver']
}
