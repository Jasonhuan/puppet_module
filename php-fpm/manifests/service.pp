class php-fpm::service{
  service{ 'php70-php-fpm':
    name => 'php70-php-fpm',
    ensure => running,
    enable => true,
    require => Class['php-fpm::install'],
    require => Class['php-fpm::config'],
  }
}
