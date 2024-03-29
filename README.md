# rp-puppetcontrol-skeleton

## Overview

This repository provides a Puppet control repository template that can be used
with TIO Platform Puppet Infrastructure.


Primary components provided include:

- An environment configuration file that correctly implements:
  * A site directory that contains site-local role and profile manifests.
  * Configuration version based on git commit ID.
- Basic example of role/profile code including roles and profiles required for puppet server bootstrapping and management.
- Example hiera directory structure with pre-created common, example and puppet_server data files.
- An r10k Puppetfile for managing deployment of Puppet modules within your environment.

## Dependencies
This control repository should be used in conjunction with the TIO Platform Puppet Infrastructure.

See [rp-terraform-puppetserver](https://gitlab.et-scm.com/elsevier-core-engineering/rp-terraform-puppetserver) for details about deploying a new Puppet infrastructure.

## Usage
1. Create a new empty repository (e.g. rp-puppetcontrol-test).
2. Make a bare clone of the puppet control skeleton repository.
```
git clone --bare git@gitlab.et-scm.com:elsevier-core-engineering/rp-puppetcontrol-skeleton.git
```
3. From within the cloned directory, mirror push to your new control repository.
```
cd rp-puppetcontrol-skeleton.git
git push --mirror git@gitlab.et-scm.com:elsevier-core-engineering/rp-puppetcontrol-test.git
```
4. Remove our temporary local repository
```
cd ..
rm -rf rp-puppetcontrol-skeleton.git
```
5. Clone or update the new repository you created
```
git clone git@gitlab.et-scm.com:elsevier-core-engineering/rp-puppetcontrol-test.git
```
6. Enable the Puppet_DeployKey deploy key on your new repository.
  * Browse to [GitLab](https://gitlab.et-scm.com/)
  * Navigate to the new repository you created
  * Select `Settings` -> `Deploy Keys`
  * Locate `Puppet_DeployKey` from the list of available deploy keys, select `Enable`
