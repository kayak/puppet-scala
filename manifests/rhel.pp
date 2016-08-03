class scala::rhel {

  package { "scala-${::scala::params::version}":
    provider => "rpm",
    ensure => installed,
    source => "http://www.scala-lang.org/files/archive/scala-${::scala::params::version}.rpm",
    before => Yumrepo['bintray--sbt-rpm'];
  }

  yumrepo { 'bintray--sbt-rpm':
    baseurl    => 'http://dl.bintray.com/sbt/rpm',
    descr      => 'The bintray--sbt-rpm repository',
    enabled    => '1',
    gpgcheck   => '0';
  }

  package { 'sbt':
    ensure  => "${::scala::params::sbt_version}",
    require => Yumrepo['bintray--sbt-rpm'];
  }

}