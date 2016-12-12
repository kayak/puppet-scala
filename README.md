Puppet module for installing Scala and SBT
 This module is also available on the [Puppet Forge](https://forge.puppetlabs.com/garethr/scala)

## Usage

The module includes a single class:

    include 'scala'

This installs scala and sbt.

You must include `$scala::params::version` in hiera to specify the version of Scala. Latest, present, installed, and similar do not work.