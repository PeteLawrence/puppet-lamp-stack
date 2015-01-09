class php {

  # package install list
  $packages = [
    "php5",
    "php5-cli",
    "php5-cgi",
    "php5-mysql",
    "php-pear",
    "php5-dev",
    "php5-gd",
    "php5-mcrypt"
  ]

  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }
}
