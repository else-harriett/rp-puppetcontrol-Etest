# This is the Puppetfile that defines the modules from the forge and other
# source code repositories that you want installed in the environment by r10k.
#
# NOTE: Puppetfiles and r10k do NOT include dependency resolution. You must
# make sure that you have every module needed for all of your specified modules
# to run.
#
# Please check the modules made available to you globally before adding modules
# here to reduce duplication.

# Specifies the forge endpoint to use when retrieving modules.
forge 'http://forge.puppetlabs.com'

#------------------------------------------------------------------------------
# Puppet Forge Modules
#------------------------------------------------------------------------------
# To install a specific version, and then keep the module at that version:
# mod 'puppetlabs/ntp', '4.1.2'
# ---
# To install the latest available version of a module, and then continue to
# update the module:
# mod 'puppetlabs/ntp', :latest

mod "garethr/docker"
# mod "rtyler/jenkins", "1.6.1"
mod "puppetlabs/java"
mod "puppet/archive"
mod 'puppetlabs/git'

#------------------------------------------------------------------------------
# Git Modules
#------------------------------------------------------------------------------
# To install the module and track the 'experimental_feature' branch:
# mod 'rap_puppet_puppetserver',
#  :git => 'ssh://gitlab.et-scm.com/tio/rap-puppet-puppetserver.git',
#  :ref => 'experimental_feature'
# ---
# To install the module and pin to the 1.0.1 release tag (preferred method):
# mod 'rap_puppet_puppetserver',
#  :git => 'ssh://gitlab.et-scm.com/tio/rap-puppet-puppetserver.git',
#  :tag => '1.0.1'

mod 'cloudwatch',
  :git => "ssh://gitlab.et-scm.com/elsevier-core-engineering/rp-puppet-cloudwatch.git",
  :tag => '1.9.0'

mod "rap_puppet_jenkins",
  :git => "ssh://gitlab.et-scm.com/elsevier-core-engineering/rp-puppet-jenkins.git",
  :tag => '2.1.1'
  
mod 'rtyler/jenkins',
  :git    => 'https://github.com/elconas/puppet-jenkins.git',
  :branch => 'fix_749'