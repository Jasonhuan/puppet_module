class php-fpm::config{
  file{ 'php-fpm.conf':
    path => '/etc/opt/remi/php70/php-fpm.conf',
    ensure => file,
    require => Class['php-fpm::install'],
    source => "puppet:///modules/php-fpm/php-fpm.conf",
  }
  file{ 'www.conf':
    path => '/etc/opt/remi/php70/php-fpm.d/www.conf',
    ensure => file,
    require => Class['php-fpm::install'],
    source => "puppet:///modules/php-fpm/www.conf",
  }
}
