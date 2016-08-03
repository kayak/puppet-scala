# == Class: scala
#
# Class to manage the installation of Scala
#
class scala {
  include wget

  case $::osfamily {
    'windows','Solaris','Darwin': {
      fail("Unsupported osfamily: ${::osfamily}")
    }
    'redhat': {
        include ::scala::rhel
    }
    'debian': {
        include ::scala::deb
    }
    default: { }
  }

}
