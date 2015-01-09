class lighttpd {

  # install apache
  package { "lighttpd":
    ensure => present,
    require => Exec["apt-get update"]
  }

  # enable php
  exec { "enable-php":
    command => "lighty-enable-mod fastcgi-php",
    notify  => Exec['reload-lighttpd'],
  }

  #point to /vagrant/webroot
  file { '/var/www':
   ensure => 'link',
   target => '/vagrant/webroot',
  }

  # starts the apache2 service once the packages installed, and monitors changes to its configuration files and reloads if nesessary
  service { "lighttpd":
    ensure => running,
    require => Package["lighttpd"],
  }

  exec {'reload-lighttpd':
    command     => '/etc/init.d/lighttpd force-reload',
    refreshonly => true,
    onlyif      => 'lighttpd-angel -t -f /etc/lighttpd/lighttpd.conf',
    path        => $::path,
  }

}
